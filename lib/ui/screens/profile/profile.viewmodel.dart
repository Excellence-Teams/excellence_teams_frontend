import 'package:excellence_teams_frontend/ui/screens/profile/profile.viewmodel.interface.dart';

class ProfileViewModel extends IProfileViewModel {
  ProfileViewModel({
    required super.authenticationRepository,
    required super.router,
  }) : super(initialState: null);
}
