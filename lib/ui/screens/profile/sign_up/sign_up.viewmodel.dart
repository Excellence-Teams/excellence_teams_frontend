import 'package:excellence_teams_client/data/repository/repositories.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/util/log.dart';
import 'package:rx_cubit/rx_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up.viewmodel.freezed.dart';

class SignUpViewModel extends RxCubit<SignUpState> {
  final Api _api;
  final AuthenticationRepository _authenticationRepository;
  final TagsRepository _tagsRepository;
  final StackRouter _router;

  List<String> _themes = [];
  List<String> get themes => _themes;

  List<String> _skills = [];
  List<String> get skills => _skills;

  List<String> _degrees = [];
  List<String> get degrees => _degrees;

  List<String> get languages => _tagsRepository.languages;

  SignUpViewModel({
    required Api api,
    required AuthenticationRepository authenticationRepository,
    required TagsRepository tagsRepository,
    required StackRouter router,
  })  : _api = api,
        _authenticationRepository = authenticationRepository,
        _tagsRepository = tagsRepository,
        _router = router,
        super(const _SignedOut()) {
    _tagsRepository.themes.listen(_themesListener);
    _tagsRepository.skills.listen(_skillsListener);
    _tagsRepository.degrees.listen(_degreesListener);
  }
  void _themesListener(List<String> themes) {
    _themes = themes;
    notifyListeners();
  }

  void _skillsListener(List<String> skills) {
    _skills = skills;
    notifyListeners();
  }

  void _degreesListener(List<String> degrees) {
    _degrees = degrees;
    notifyListeners();
  }

  Future<void> userInput({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
    required int? age,
    required List<String> degrees,
    required List<String> skills,
    required List<String> interests,
    required String description,
    required String linkedIn,
    required String website,
    required List<String> languages,
    required int minAvailableTime,
    required int maxAvailableTime,
  }) async {
    emit(const _Loading());

    if (name.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        passwordConfirmation.isEmpty ||
        degrees.isEmpty ||
        skills.isEmpty ||
        interests.isEmpty ||
        languages.isEmpty) {
      emit(_FieldsEmpty());
      return;
    }
    if (password != passwordConfirmation) {
      emit(_PasswordMismatch());
      return;
    }

    await _authenticationRepository.registerEmailPassword(
      email: email,
      password: password,
    );

    debugLog(state.toString());
    debugLog(_authenticationRepository.state.toString());

    bool shouldReturn = false;
    _authenticationRepository.state.mapOrNull(
      signedOut: (_) => emit(_UnknownError()),
      signedIn: (_) async {
        emit(_Success());
        _afterSuccess();
        shouldReturn = true;
      },
      error: (error) {
        error.error.mapOrNull(
          unknown: (_) => emit(_UnknownError()),
          weakPassword: (_) => emit(_WeakPassword()),
          emailInUse: (_) => emit(_EmailInUse()),
        );
        shouldReturn = true;
      },
    );

    if (shouldReturn) {
      return;
    }

    try {
      await _api.post(path: 'profile/register', body: {
        // TODO: add profile picture
        "name": name,
        "email": email,
        "age": age,
        "degrees": degrees,
        "skills": skills,
        "interests": interests,
        "description": description,
        "linkedIn": linkedIn,
        "website": website,
        "languages": languages,
        "minAvailableTime": minAvailableTime,
        "maxAvailableTime": maxAvailableTime,
      });
    } catch (e, s) {
      debugLogError('error posting profile', e, s);
      emit(_UnknownError());
      return;
    }

    await _authenticationRepository.signInEmailPassword(
        email: email, password: password);

    _authenticationRepository.state.map(
      initial: (_) => emit(_Loading()),
      signedOut: (_) => emit(_UnknownError()),
      signedInWithoutAccount: (_) => emit(_UnknownError()),
      signedIn: (_) async {
        emit(_Success());
        _afterSuccess();
      },
      error: (error) => error.error.mapOrNull(
        unknown: (_) => emit(_UnknownError()),
        weakPassword: (_) => emit(_WeakPassword()),
        emailInUse: (_) => emit(_EmailInUse()),
      ),
    );
    debugLog(state.toString());
    debugLog(_authenticationRepository.state.toString());
  }

  Future<void> _afterSuccess() async {
    await Future.delayed(const Duration(seconds: 1));

    debugLog("Profile Details pushed");
    _router.push(MainRoute(children: [ProfileDetailsRoute()]));
  }

  void onAlreadyAccount() => _router.push(const LoginRoute());
}

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.signedOut() = _SignedOut;
  const factory SignUpState.loading() = _Loading;
  const factory SignUpState.fieldsEmpty() = _FieldsEmpty;
  const factory SignUpState.passwordMismatch() = _PasswordMismatch;
  const factory SignUpState.weakPassword() = _WeakPassword;
  const factory SignUpState.emailInUse() = _EmailInUse;
  const factory SignUpState.unknownError() = _UnknownError;
  const factory SignUpState.success() = _Success;
}
