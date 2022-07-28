import 'package:excellence_teams_client/data/models/project.model.dart';
import 'package:excellence_teams_client/data/repository/repositories.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/ui/resources/resources.dart';
import 'package:excellence_teams_client/ui/screens/profile/profile_details/profile.viewmodel.dart';
import 'package:excellence_teams_client/ui/widgets/button.dart';
import 'package:excellence_teams_client/ui/widgets/project_card.dart';
import 'package:excellence_teams_client/ui/widgets/selectable_tags.dart';
import 'package:excellence_teams_client/ui/widgets/text.dart';
import 'package:flutter/material.dart';

class ProfileDetailsScreen extends StatelessWidget with AutoRouteWrapper {
  const ProfileDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileViewModel(
        authenticationRepository: getIt<AuthenticationRepository>(),
        projectRepository: context.read<ProjectRepository>(),
        router: context.router,
      ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1000) {
          return Column(
            children: [
              const SizedBox(height: 40, width: 40),
              _SideBar(),
              const SizedBox(height: 40, width: 40),
              _ProfileRightSide(),
            ],
          );
        } else {
          return Row(
            children: [
              const SizedBox(height: 40, width: 40),
              _SideBar(),
              const SizedBox(height: 40, width: 40),
              _ProfileRightSide(),
              const SizedBox(width: 24),
            ],
          );
        }
      },
    );
  }
}

class _SideBar extends StatefulWidget {
  const _SideBar({Key? key}) : super(key: key);

  @override
  State<_SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<_SideBar> {
  // TODO add shimmers
  static Widget _loading() => Text("Loading");

  static Widget _error() => Text("Error");

  @override
  Widget build(BuildContext context) {
    final model = context.watch<ProfileViewModel>();
    return model.state.map(
        error: (_) => _error(),
        loading: (_) => _loading(),
        success: (state) => Container(
            alignment: Alignment.center,
            color: ETColors.white,
            child: Column(
              children: [
                const SizedBox(height: 40),
                CircleAvatar(
                  radius: 80,
                  backgroundColor: ETColors.limeGreen,
                ),
                const SizedBox(height: 20),
                ETText(
                  state.user.name,
                  style: ETTextStyles.montSemiBold.copyWith(fontSize: 32),
                ),
                const SizedBox(height: 20),
                ETText(
                  "About",
                  style: ETTextStyles.montRegular.copyWith(fontSize: 24),
                ),
                const SizedBox(height: 16),
                ETButton(
                  label: "Sign Out",
                  onClick: () => model.signOut(),
                ),
                const SizedBox(height: 16),
                ETButton(
                  label: "Edit Profile",
                  // TODO add functionality
                  onClick: () => print("Edit Profile"),
                ),
              ],
            )));
  }
}

class _ProfileRightSide extends StatefulWidget {
  const _ProfileRightSide({Key? key}) : super(key: key);

  @override
  State<_ProfileRightSide> createState() => _ProfileRightSideState();
}

class _ProfileRightSideState extends State<_ProfileRightSide> {
  List<bool> skillPressedList = List.filled(100, true);
  List<bool> interestsPressedList = List.filled(100, true);

  static Widget _loading() => Text("Loading");

  static Widget _error() => Text("Error");

  @override
  Widget build(BuildContext context) {
    final model = context.watch<ProfileViewModel>();
    return model.state.map(
      loading: (_) => _loading(),
      error: (_) => _error(),
      success: (state) {
        final skills = state.user.skills;
        final interests = state.user.interests;
        final projects = state.projects;

        return Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ETColors.grey,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: _skillsArea(skills),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: _interestsArea(interests),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: _projectsArea(projects),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _projectsArea(List<Project> projects) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: ETColors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ETText(
                    "Projects",
                    style: ETTextStyles.montSemiBold.copyWith(fontSize: 32),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    children: _projectsRow(projects),
                    spacing: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row _interestsArea(List<String>? interests) {
    return Row(
      children: [
        Expanded(
          child: Container(
              decoration: const BoxDecoration(
                color: ETColors.white,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ETText(
                      "Interests",
                      style: ETTextStyles.montSemiBold.copyWith(fontSize: 32),
                    ),
                    const SizedBox(height: 8),
                    _tagRow(
                      interests,
                      interestsPressedList,
                      "no interests selected",
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }

  Row _skillsArea(List<String>? skills) {
    return Row(
      children: [
        Expanded(
          child: Container(
              decoration: const BoxDecoration(
                  color: ETColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ETText(
                      "Skills",
                      style: ETTextStyles.montSemiBold.copyWith(fontSize: 32),
                    ),
                    const SizedBox(height: 8),
                    _tagRow(skills, skillPressedList, "no skills selected"),
                  ],
                ),
              )),
        ),
      ],
    );
  }

  List<Widget> _projectsRow(List<Project> projects) {
    return List<Widget>.generate(projects.length, (i) {
      return ProjectCard(
        project: projects[i],
      );
    });
  }

  Widget _tagRow(
          List<String>? tags, List<bool> pressedList, String placeholderText) =>
      (tags?.isEmpty ?? true)
          ? Text(placeholderText)
          : Wrap(
              spacing: 5,
              runSpacing: 5,
              children: List<Widget>.generate(
                tags!.length,
                (i) {
                  return StateButton(
                    text: tags[i],
                    isActive: pressedList[i],
                    onClick: () => setState(
                      () {
                        pressedList[i] = !pressedList[i];
                      },
                    ),
                  );
                },
              ),
            );
}
