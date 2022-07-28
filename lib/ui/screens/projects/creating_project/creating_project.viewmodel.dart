import 'package:excellence_teams_client/data/models/user.model.dart';
import 'package:excellence_teams_client/data/repository/repositories.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rx_cubit/rx_cubit.dart';

part 'creating_project.viewmodel.freezed.dart';

class CreatingProjectViewModel extends RxCubit<CreatingProjectState> {
  final AuthenticationRepository _authenticationRepository;
  final ProjectRepository _projectRepository;
  final TagsRepository _tagsRepository;
  final UserRepository _userRepository;
  final StackRouter _router;

  List<User> _users = [];
  List<User> get users => _users;

  List<String> get types => _projectRepository.types;

  List<String> _themes = [];
  List<String> get themes => _themes;

  List<String> _skills = [];
  List<String> get skills => _skills;

  List<String> _degrees = [];
  List<String> get degrees => _degrees;

  List<String> get languages => _tagsRepository.languages;

  CreatingProjectViewModel({
    required AuthenticationRepository authenticationRepository,
    required ProjectRepository projectRepository,
    required TagsRepository tagsRepository,
    required UserRepository userRepository,
    required StackRouter router,
  })  : _authenticationRepository = authenticationRepository,
        _tagsRepository = tagsRepository,
        _projectRepository = projectRepository,
        _userRepository = userRepository,
        _router = router,
        super(const _Initial()) {
    _onAuthenticationChanged();
    _authenticationRepository.addListener(_onAuthenticationChanged);

    _userRepository.getAllUsers();
    _userRepository.allUsers.listen(_allUsersListener);

    _tagsRepository.themes.listen(_themesListener);
    _tagsRepository.skills.listen(_skillsListener);
    _tagsRepository.degrees.listen(_degreesListener);
  }

  void _onAuthenticationChanged() {
    print("on authentication changed");
    emit((_authenticationRepository.state.mapOrNull(signedIn: (_) => true) ??
            false)
        ? _Initial()
        : _SignedOut());
  }

  void _allUsersListener(List<User> users) {
    final currentUser = _authenticationRepository.state
        .mapOrNull(signedIn: (state) => state.user);
    users.remove(currentUser);
    _users = users;
    notifyListeners();
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

  Future<void> createProject({
    required String title,
    required List<User> members,
    required String? type,
    required List<String> themes,
    required String description,
    required List<String> skills,
    required List<String> degrees,
    required List<String> languages,
  }) async {
    emit(const _Loading());

    members.add(_authenticationRepository.state
        .mapOrNull(signedIn: (state) => state.user)!);

    if (title.isEmpty ||
        members.isEmpty ||
        type == null ||
        themes.isEmpty ||
        description.isEmpty ||
        skills.isEmpty ||
        degrees.isEmpty ||
        languages.isEmpty) {
      emit(const _FieldsEmpty());
      return;
    }

    try {
      await _projectRepository.createProject(
        title: title,
        members: members,
        type: type,
        themes: themes,
        description: description,
        skills: skills,
        degrees: degrees,
        languages: languages,
      );
      emit(const _Success());
      _afterSuccess();
    } catch (e) {
      emit(const _Error());
    }
  }

  Future<void> _afterSuccess() async {
    await Future.delayed(const Duration(seconds: 1));
    _router.push(MainRoute(children: [ProfileDetailsRoute()]));
  }

  void toSignIn() => _router.push(LoginRoute());
}

@freezed
class CreatingProjectState with _$CreatingProjectState {
  const factory CreatingProjectState.initial() = _Initial;
  const factory CreatingProjectState.loading() = _Loading;
  const factory CreatingProjectState.fieldsEmpty() = _FieldsEmpty;
  const factory CreatingProjectState.success() = _Success;
  const factory CreatingProjectState.error() = _Error;
  const factory CreatingProjectState.signedOut() = _SignedOut;
}
