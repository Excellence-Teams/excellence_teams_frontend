import 'package:excellence_teams_client/data/repository/authentication.repository.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/util/log.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rx_cubit/rx_cubit.dart';

part 'login.viewmodel.freezed.dart';

class LoginViewModel extends RxCubit<LoginState> {
  final AuthenticationRepository _authenticationRepository;
  final StackRouter _router;

  LoginViewModel({
    required AuthenticationRepository authenticationRepository,
    required StackRouter router,
  })  : _authenticationRepository = authenticationRepository,
        _router = router,
        super(const LoginState.signedOut());

  Future<void> userInput({
    required String email,
    required String password,
    required bool rememberLogin,
  }) async {
    emit(const LoginState.loading());
    _authenticationRepository.storeTokenOnDevice = rememberLogin;

    if (email.isEmpty || password.isEmpty) {
      emit(const LoginState.fieldsEmpty());
      return;
    }

    await _authenticationRepository.signInEmailPassword(
      email: email,
      password: password,
    );

    emit(_authenticationRepository.state.map(
      initial: (_) => const _Loading(),
      signedOut: (_) => _UnknownError(),
      signedInWithoutAccount: (_) => _UnknownError(),
      signedIn: (_) {
        _afterSuccess();
        return _Success();
      },
      error: (error) =>
          error.error.mapOrNull(
            wrongPassword: (_) => _WrongPassword(),
            userNotFound: (_) => _UserNotFound(),
          ) ??
          _UnknownError(),
    ));
  }

  Future<void> _afterSuccess() async {
    await Future.delayed(const Duration(seconds: 1));

    debugLog("Profile Details pushed");
    await _router.push(const MainRoute(children: [ProfileDetailsRoute()]));
  }

  void onCreateNewAccount() => _router.push(const SignUpRoute());
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState.signedOut() = _SignedOut;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.fieldsEmpty() = _FieldsEmpty;
  const factory LoginState.userNotFound() = _UserNotFound;
  const factory LoginState.wrongPassword() = _WrongPassword;
  const factory LoginState.unknownError() = _UnknownError;
  const factory LoginState.success() = _Success;
}
