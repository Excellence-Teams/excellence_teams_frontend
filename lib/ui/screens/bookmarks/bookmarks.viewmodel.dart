import 'package:excellence_teams_client/data/models/project.model.dart';
import 'package:excellence_teams_client/data/models/user.model.dart';
import 'package:excellence_teams_client/data/repository/repositories.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:rx_cubit/rx_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmarks.viewmodel.freezed.dart';

class BookmarksViewModel extends RxCubit<BookmarkState> {
  BookmarksViewModel({
    required BookmarkRepository bookmarkRepository,
    required AuthenticationRepository authenticationRepository,
    required StackRouter router,
  })  : _bookmarkRepository = bookmarkRepository,
        _authenticationRepository = authenticationRepository,
        _router = router,
        super(_State()) {
    _bookmarkRepository.addListener(_onBookmarkRepositoryChanged);
    _authenticationRepository.addListener(() => notifyListeners());
  }

  final BookmarkRepository _bookmarkRepository;
  final AuthenticationRepository _authenticationRepository;
  final StackRouter _router;

  bool get isSignedIn => _authenticationRepository.user != null;

  void _onBookmarkRepositoryChanged() {
    emit(_State(
      users: _bookmarkRepository.users,
      projects: _bookmarkRepository.projects,
    ));
  }

  void toSignIn() => _router.push(LoginRoute());
}

@freezed
class BookmarkState with _$BookmarkState {
  const factory BookmarkState({
    @Default([]) List<User> users,
    @Default([]) List<Project> projects,
  }) = _State;
}
