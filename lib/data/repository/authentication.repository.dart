import 'package:excellence_teams_frontend/data/models/authentication_token.model.dart';
import 'package:excellence_teams_frontend/data/models/user.model.dart';
import 'package:excellence_teams_frontend/services/services.dart';
import 'package:excellence_teams_frontend/util/log.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:rx_cubit/rx_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication.repository.freezed.dart';

class AuthenticationRepository extends RxCubit<AuthenticationStatus> {
  final FirebaseAuthenticationService _authService;
  final Api _api;

  AuthenticationRepository({
    required FirebaseAuthenticationService authService,
    required Api api,
  })  : _authService = authService,
        _api = api,
        super(const AuthenticationStatus.signedOut());

  Future<void> _loadStoredToken() async {
    // TODO load stored jwt token
  }

  Future<void> registerEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      final user = await _authService.registerEmailPassword(
        email: email,
        password: password,
      );
      final token = await user!.getIdToken();
      emit(AuthenticationStatus.noAccount(
        token: AuthenticationToken(
          token: token,
          tokenType: "Bearer",
        ),
      ));
      debugLog("created user with token $token");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(const AuthenticationStatus.error(
          error: AuthenticationError.weakPassword,
        ));
        debugLog("error: user inserted a weak password");
      } else if (e.code == 'email-already-in-use') {
        emit(const AuthenticationStatus.error(
          error: AuthenticationError.emailInUse,
        ));
        debugLog("error: email is already in use");
      }
    } catch (e, s) {
      debugLogError('unknown firebase error at registerEmailPassword', e, s);
      emit(const AuthenticationStatus.error(
        error: AuthenticationError.unknown,
      ));
    }
  }

  Future<void> signInEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      final user = await _authService.signInEmailPassword(
        email: email,
        password: password,
      );
      final token = await user!.getIdToken();
      _loadAccount(
        AuthenticationToken(
          token: token,
          tokenType: "Bearer",
        ),
      );
      debugLog("user loaded with token $token");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(const AuthenticationStatus.error(
          error: AuthenticationError.userNotFound,
        ));
        debugLog("error: user not found");
      } else if (e.code == 'wrong-password') {
        emit(const AuthenticationStatus.error(
            error: AuthenticationError.wrongPassword));
        debugLog("error: wrong password was inserted");
      }
    } catch (e, s) {
      debugLogError('unknown firebase error at signInEmailPassword', e, s);
      emit(const AuthenticationStatus.error(
        error: AuthenticationError.unknown,
      ));
    }
  }

  Future<void> _loadAccount(AuthenticationToken token) async {
    try {
      final response = await _api.get('profile/getOwnProfile');
      final user = User.fromMap(response.data);
      emit(AuthenticationStatus.signedIn(
        user: user,
        token: token,
      ));
    } catch (e, s) {
      debugLogError('error fetching signed in user', e, s);
      emit(const AuthenticationStatus.error(
        error: AuthenticationError.unknown,
      ));
    }
  }
}

@freezed
class AuthenticationStatus with _$AuthenticationStatus {
  const factory AuthenticationStatus.signedOut() = _SignedOut;

  const factory AuthenticationStatus.noAccount({
    required AuthenticationToken token,
  }) = _NoAccount;

  const factory AuthenticationStatus.signedIn({
    required User user,
    required AuthenticationToken token,
  }) = _SignedIn;

  const factory AuthenticationStatus.error({
    required AuthenticationError error,
  }) = _Error;
}

enum AuthenticationError {
  unknown,
  weakPassword,
  emailInUse,
  userNotFound,
  wrongPassword,
}
