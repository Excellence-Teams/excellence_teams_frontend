import 'package:excellence_teams_client/data/models/authentication_token.model.dart';
import 'package:excellence_teams_client/data/models/user.model.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/util/log.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:rx_cubit/rx_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication.repository.freezed.dart';

class AuthenticationRepository extends RxCubit<AuthenticationStatus> {
  final FirebaseAuthenticationService _authService;
  final SecureStorageService _storage;

  final _storageKey = 'excellence_teams.auth.token';

  User? get user => state.mapOrNull(signedIn: (state) => state.user);

  AuthenticationToken? get _currentToken => state.mapOrNull(
        signedInWithoutAccount: (noAccount) => noAccount.token,
        signedIn: (signedIn) => signedIn.token,
      );

  bool _storeTokenOnDevice = false;

  set storeTokenOnDevice(bool shouldStore) {
    _storeTokenOnDevice = shouldStore;
    if (shouldStore && _currentToken != null) {
      _storeToken(_currentToken!);
    } else {
      _deleteToken();
    }
  }

  AuthenticationRepository([
    FirebaseAuthenticationService? authService,
    SecureStorageService? storage,
  ])  : _authService = authService ?? getIt<FirebaseAuthenticationService>(),
        _storage = storage ?? getIt<SecureStorageService>(),
        super(const _Initial()) {
    final tokenFuture = _loadToken();
    tokenFuture.then((token) {
      if (token != null) {
        emit(_SignedInWithoutAccount(token: token));
        return _loadAccount(token);
      } else {
        emit(_SignedOut());
      }
    });
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
    return _storage.store(
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

      emit(_SignedInWithoutAccount(token: token));
      if (_storeTokenOnDevice) {
        await _storeToken(token);
      }

      debugLog("created user with token $tokenString");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(const _Error(
          error: _WeakPassword(),
        ));
        debugLog("error: user inserted a weak password");
      } else if (e.code == 'email-already-in-use') {
        emit(const _Error(
          error: _EmailInUse(),
        ));
        debugLog("error: email is already in use");
      }
    } catch (e, s) {
      emit(const _Error(
        error: _UnknownError(),
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
      emit(_SignedInWithoutAccount(token: token));
      await _loadAccount(token);
      if (_storeTokenOnDevice) {
        await _storeToken(token);
      }

      debugLog("user signed in with token $tokenString");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(const _Error(
          error: _UserNotFound(),
        ));
        debugLog("error: user not found");
      } else if (e.code == 'wrong-password') {
        emit(const _Error(
          error: _WrongPassword(),
        ));
        debugLog("error: wrong password was inserted");
      }
    } catch (e, s) {
      emit(const _Error(
        error: _UnknownError(),
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
      final response = await getIt<Api>().get('profile/getOwnProfile');
      final user = User.fromJson(response);
      emit(_SignedIn(
        user: user,
        token: token,
      ));

      debugLog("user account loaded with id ${user.publicId}");
    } catch (e, s) {
      emit(const _Error(
        error: _UnknownError(),
      ));
      debugLogError('error fetching signed in user', e, s);
    }
  }

  Future<void> signOut() async {
    await _deleteToken();
    emit(_SignedOut());
  }
}

@freezed
class AuthenticationStatus with _$AuthenticationStatus {
  const factory AuthenticationStatus.initial() = _Initial;
  const factory AuthenticationStatus.signedOut() = _SignedOut;

  const factory AuthenticationStatus.signedInWithoutAccount({
    required AuthenticationToken token,
  }) = _SignedInWithoutAccount;

  const factory AuthenticationStatus.signedIn({
    required User user,
    required AuthenticationToken token,
  }) = _SignedIn;

  const factory AuthenticationStatus.error({
    required AuthenticationError error,
  }) = _Error;
}

@freezed
class AuthenticationError with _$AuthenticationError {
  const factory AuthenticationError.unknown() = _UnknownError;
  const factory AuthenticationError.weakPassword() = _WeakPassword;
  const factory AuthenticationError.emailInUse() = _EmailInUse;
  const factory AuthenticationError.userNotFound() = _UserNotFound;
  const factory AuthenticationError.wrongPassword() = _WrongPassword;
}
