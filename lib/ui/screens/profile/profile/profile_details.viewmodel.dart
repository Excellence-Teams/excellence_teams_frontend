import 'package:excellence_teams_frontend/ui/screens/profile/profile.viewmodel.interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_details.viewmodel.freezed.dart';

class ProfileDetailsViewModel extends IProfileViewModel<ProfileDetailsState> {
  ProfileDetailsViewModel({
    required super.authenticationRepository,
    required super.router,
  }) : super(initialState: ProfileDetailsState.loading()) {
    // TODO! make call to load profile data
  }
}

@freezed
class ProfileDetailsState with _$ProfileDetailsState {
  const factory ProfileDetailsState.loading() = _Loading;
  // TODO add content to the success state
  const factory ProfileDetailsState.success() = _Success;
  const factory ProfileDetailsState.error() = _Error;
}
