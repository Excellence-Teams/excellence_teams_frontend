import 'package:excellence_teams_frontend/data/repository/authentication.repository.dart';
import 'package:excellence_teams_frontend/services/services.dart';
import 'package:excellence_teams_frontend/ui/screens/profile/profile.viewmodel.interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.viewmodel.freezed.dart';

typedef OnUserInput = void Function({
  required String email,
  required String password,
  required bool register,
});

class LoginViewModel extends IProfileViewModel<LoginState> {
  LoginViewModel({
    required super.authenticationRepository,
    required super.router,
  }) : super(
          initialState: const LoginState.signedOut(),
        );

  @override
  void authStatusListener() {
    authenticationRepository.state.map(
      signedOut: (_) => emit(const LoginState.signedOut()),
      signedIn: (_) {
        router.push(const ProfileDetailsRoute());
      },
      noAccount: (_) =>
          emit(LoginState.error(error: AuthenticationError.userNotFound)),
      error: (state) => emit(LoginState.error(error: state.error)),
    );
  }

  void userInput({
    required String email,
    required String password,
    required bool register,
    required bool rememberLogin,
  }) {
    emit(const LoginState.loading());
    authenticationRepository.storeTokenOnDevice = rememberLogin;
    register
        ? authenticationRepository.registerEmailPassword(
            email: email,
            password: password,
          )
        : authenticationRepository.signInEmailPassword(
            email: email,
            password: password,
          );
  }
}

@freezed
class LoginState with _$LoginState {
  // TODO add extra state if not yet checked for a stored jwt token
  const factory LoginState.loading() = _Loading;
  const factory LoginState.signedOut() = _SignedOut;
  const factory LoginState.error({
    required AuthenticationError error,
  }) = _Error;
}
