import 'package:excellence_teams_frontend/data/repository/authentication.repository.dart';
import 'package:excellence_teams_frontend/services/services.dart';
import 'package:rx_cubit/rx_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.viewmodel.freezed.dart';

typedef OnUserInput = void Function({
  required String email,
  required String password,
  required bool register,
});

class LoginViewModel extends RxCubit<LoginState> {
  final AuthenticationRepository _authenticationRepository;
  final AppRouter _router;

  LoginViewModel({
    required AuthenticationRepository authenticationRepository,
    required AppRouter router,
  })  : _authenticationRepository = authenticationRepository,
        _router = router,
        super(
          const LoginState.signedOut(),
        ) {
    _authenticationRepository.addListener(() => _authStatusListener);
  }

  void _authStatusListener() {
    _authenticationRepository.state.map(
      signedOut: (_) => emit(const LoginState.signedOut()),
      // TODO change to profile screen
      signedIn: (_) {
        print("signed in registerd");
        _router.push(const MainRoute());
      },
      noAccount: (_) {}, // TODO push to sign up screen
      error: (state) => emit(LoginState.error(error: state.error)),
    );
  }

  void userInput({
    required String email,
    required String password,
    required bool register,
  }) {
    emit(const LoginState.loading());
    register
        ? _authenticationRepository.registerEmailPassword(
            email: email,
            password: password,
          )
        : _authenticationRepository.signInEmailPassword(
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
