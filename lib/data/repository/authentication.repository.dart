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
  final SecureStorageService _storage;

  final _storageKey = 'excellence_teams.auth.token';

  AuthenticationToken? get _currentToken => state.mapOrNull(
      noAccount: (noAccount) => noAccount.token,
      signedIn: (signedIn) => signedIn.token);

  bool _storeTokenOnDevice = false;

  set storeTokenOnDevice(bool shouldStore) {
    _storeTokenOnDevice = shouldStore;
    if (shouldStore && _currentToken != null) {
      _storeToken(_currentToken!);
    } else {
      _deleteToken();
    }
  }

  AuthenticationRepository({
    required FirebaseAuthenticationService authService,
    required Api api,
    required SecureStorageService storage,
  })  : _authService = authService,
        _api = api,
        _storage = storage,
        super(const AuthenticationStatus.signedOut()) {
    final tokenFuture = _loadToken();
    tokenFuture.then((token) => token != null ? _loadAccount(token) : null);
  }

  Future<AuthenticationToken?> _loadToken() async {
    final value = await _storage.load(
      key: _storageKey,
      parser: (String s) => AuthenticationToken(token: s),
    );
    value == null
        ? debugLog('no authentication token loaded')
        : debugLog('authentication token loaded ${value.token}');
    return value;
  }

  Future<void> _storeToken(AuthenticationToken token) async {
    _storage.store(
      key: _storageKey,
      value: token,
      serializer: (AuthenticationToken t) => t.token,
    );
  }

  Future<void> _deleteToken() async {
    await _storage.delete(_storageKey);
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
      final tokenString = await user!.getIdToken();
      final token = AuthenticationToken(token: tokenString);

      emit(AuthenticationStatus.noAccount(token: token));
      if (_storeTokenOnDevice) {
        _storeToken(token);
      }

      debugLog("created user with token $tokenString");
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
      emit(const AuthenticationStatus.error(
        error: AuthenticationError.unknown,
      ));
      debugLogError(
        'unknown firebase error at registerEmailPassword',
        e,
        s,
      );
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
      final tokenString = await user!.getIdToken();
      final token = AuthenticationToken(token: tokenString);

      _loadAccount(token);
      if (_storeTokenOnDevice) {
        _storeToken(token);
      }

      debugLog("user signed in with token $tokenString");
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
      emit(const AuthenticationStatus.error(
        error: AuthenticationError.unknown,
      ));
      debugLogError(
        'unknown firebase error at signInEmailPassword',
        e,
        s,
      );
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

      debugLog("user account loaded with id ${user.publicId}");
    } catch (e, s) {
      emit(const AuthenticationStatus.error(
        error: AuthenticationError.unknown,
      ));
      debugLogError('error fetching signed in user', e, s);
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
