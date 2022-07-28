import 'package:excellence_teams_client/data/models/project.model.dart';
import 'package:excellence_teams_client/data/models/user.model.dart';
import 'package:excellence_teams_client/data/repository/repositories.dart';
import 'package:excellence_teams_client/util/log.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rx_cubit/rx_cubit.dart';

part 'search.viewmodel.freezed.dart';

class SearchViewModel extends RxCubit<SearchState> {
  SearchViewModel({
    required SearchRepository searchRepository,
    required TagsRepository tagsRepository,
  })  : _searchRepository = searchRepository,
        _tagsRepository = tagsRepository,
        super(_Loading()) {
    _tagsRepository.themes.listen(_themesListener);
    _tagsRepository.skills.listen(_skillsListener);
    _tagsRepository.degrees.listen(_degreesListener);

    _selectedLanguages = List.generate(
      _tagsRepository.languages.length,
      (_) => false,
    );

    _search();
  }

  final SearchRepository _searchRepository;
  final TagsRepository _tagsRepository;

  bool _searchForProjects = true;
  bool get searchForProjects => _searchForProjects;

  List<String> _themes = [];
  List<String> get themes => _themes;
  List<bool> _selectedThemes = [];
  List<bool> get selectedThemes => _selectedThemes;

  List<String> _skills = [];
  List<String> get skills => _skills;
  List<bool> _selectedSkills = [];
  List<bool> get selectedSkills => _selectedSkills;

  List<String> _degrees = [];
  List<String> get degrees => _degrees;
  List<bool> _selectedDegrees = [];
  List<bool> get selectedDegrees => _selectedDegrees;

  List<String> get languages => _tagsRepository.languages;
  List<bool> _selectedLanguages = [];
  List<bool> get selectedLanguages => _selectedLanguages;

  void _themesListener(List<String> themes) {
    _themes = themes;
    _selectedThemes = List.generate(themes.length, (_) => false);
    notifyListeners();
  }

  void _skillsListener(List<String> skills) {
    _skills = skills;
    _selectedSkills = List.generate(skills.length, (_) => false);
    notifyListeners();
  }

  void _degreesListener(List<String> degrees) {
    _degrees = degrees;
    _selectedDegrees = List.generate(degrees.length, (_) => false);
    notifyListeners();
  }

  void toggleSearch() {
    _searchForProjects = !_searchForProjects;
    notifyListeners();
    _search();
  }

  void toggleTheme(int index) {
    _selectedThemes[index] = !_selectedThemes[index];
    notifyListeners();
    _search();
  }

  void toggleSkill(int index) {
    _selectedSkills[index] = !_selectedSkills[index];
    notifyListeners();
    _search();
  }

  void toggleDegree(int index) {
    _selectedDegrees[index] = !_selectedDegrees[index];
    notifyListeners();
    _search();
  }

  void toggleLanguage(int index) {
    _selectedLanguages[index] = !_selectedLanguages[index];
    notifyListeners();
    _search();
  }

  Future<void> _search() async {
    emit(const _Loading());

    final themes = <String>[];
    for (int i = 0; i < _selectedThemes.length; i++) {
      if (_selectedThemes[i]) {
        themes.add(_themes[i]);
      }
    }
    final skills = <String>[];
    for (int i = 0; i < _selectedSkills.length; i++) {
      if (_selectedSkills[i]) {
        skills.add(_skills[i]);
      }
    }
    final degrees = <String>[];
    for (int i = 0; i < _selectedDegrees.length; i++) {
      if (_selectedDegrees[i]) {
        degrees.add(_degrees[i]);
      }
    }
    final languages = <String>[];
    for (int i = 0; i < _selectedLanguages.length; i++) {
      if (_selectedLanguages[i]) {
        languages.add(_tagsRepository.languages[i]);
      }
    }

    try {
      if (_searchForProjects) {
        final projects = await _searchRepository.searchProjects(
          themes: themes,
          skills: skills,
          degrees: degrees,
          languages: languages,
        );
        emit(SearchState.successProjects(projects: projects));
      } else {
        final profiles = await _searchRepository.searchProfiles(
          themes: themes,
          skills: skills,
          degrees: degrees,
          languages: languages,
        );
        emit(SearchState.successProfiles(profiles: profiles));
      }
    } catch (e, s) {
      debugLogError(
        'error searching for ${_searchForProjects ? 'projects' : 'profiles'}',
        e,
        s,
      );
      emit(_Error());
    }
  }
}

@freezed
class SearchState with _$SearchState {
  const factory SearchState.loading() = _Loading;
  const factory SearchState.successProfiles({
    required List<User> profiles,
  }) = _SuccessProfiles;
  const factory SearchState.successProjects({
    required List<Project> projects,
  }) = _SuccessProjects;
  const factory SearchState.error() = _Error;
}
