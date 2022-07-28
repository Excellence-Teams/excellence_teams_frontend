import 'package:excellence_teams_client/data/models/project.model.dart';
import 'package:excellence_teams_client/data/models/user.model.dart';
import 'package:excellence_teams_client/data/repository/repositories.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/ui/resources/colors.dart';
import 'package:excellence_teams_client/ui/screens/search/search.viewmodel.dart';
import 'package:excellence_teams_client/ui/widgets/button.dart';
import 'package:excellence_teams_client/ui/widgets/profile_card.dart';
import 'package:excellence_teams_client/ui/widgets/project_card.dart';
import 'package:excellence_teams_client/ui/widgets/selectable_tags.dart';
import 'package:excellence_teams_client/ui/widgets/text.dart';
import 'package:flutter/material.dart';

import '../../resources/text_styles.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchView();
  }
}

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchViewModel(
          searchRepository: context.read<SearchRepository>(),
          tagsRepository: context.read<TagsRepository>()),
      child: Builder(
        builder: (context) {
          final model = context.watch<SearchViewModel>();
          return Row(
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: ETColors.white,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        child: _LookingFor(model: model),
                      ),
                      const SizedBox(height: 40),
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    child: _TagsRow(
                                      title: "Topic",
                                      tags: model.themes,
                                      pressedList: model.selectedThemes,
                                      onClick: model.toggleTheme,
                                      placeholderText: "no themes found",
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Flexible(
                                    child: _TagsRow(
                                      title: "Skills",
                                      tags: model.skills,
                                      pressedList: model.selectedSkills,
                                      onClick: model.toggleSkill,
                                      placeholderText: "no skills found",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Flexible(
                              child: Column(
                                children: [
                                  Flexible(
                                    child: _TagsRow(
                                      onClick: model.toggleDegree,
                                      placeholderText: "no degrees found",
                                      pressedList: model.selectedDegrees,
                                      tags: model.degrees,
                                      title: "Degrees",
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Flexible(
                                    child: _TagsRow(
                                      onClick: model.toggleLanguage,
                                      placeholderText: "no languages found",
                                      pressedList: model.selectedLanguages,
                                      tags: model.languages,
                                      title: "Languages",
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: ETColors.grey,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 15),
                        ETText(
                          model.searchForProjects == true
                              ? "Projects"
                              : "Individuals",
                          style:
                              ETTextStyles.montSemiBold.copyWith(fontSize: 32),
                        ),
                        const SizedBox(height: 10),
                        model.state.map(
                          successProfiles: (state) => ProfilesRow(
                            profiles: state.profiles,
                          ),
                          successProjects: (state) => ProjectsRow(
                            projects: state.projects,
                          ),
                          error: (_) => Text(
                            "Error",
                          ),
                          loading: (_) => Text(
                            "Loading",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class _LookingFor extends StatelessWidget {
  const _LookingFor({
    Key? key,
    required this.model,
  }) : super(key: key);

  final SearchViewModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          children: [
            ETText(
              "Looking for",
              style: ETTextStyles.montBold.copyWith(fontSize: 24),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 100,
              height: 40,
              child: ETButton(
                label: model.searchForProjects ? "Projects" : "Individuals",
                onClick: model.toggleSearch,
                backgroundColor: ETColors.green,
                labelSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TagsRow extends StatelessWidget {
  const _TagsRow({
    Key? key,
    required this.title,
    required this.tags,
    required this.pressedList,
    required this.onClick,
    required this.placeholderText,
  }) : super(key: key);

  final String title;
  final List<String> tags;
  final List<bool> pressedList;
  final void Function(int index) onClick;
  final String placeholderText;

  @override
  Widget build(BuildContext context) => (tags.isEmpty)
      ? Text(placeholderText)
      : Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 2),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ETText(
                  title,
                  style: ETTextStyles.montRegular.copyWith(fontSize: 24),
                ),
                const SizedBox(height: 20),
                Flexible(
                  child: SingleChildScrollView(
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: List<Widget>.generate(
                        tags.length,
                        (i) {
                          return StateButton(
                            text: tags[i],
                            isActive: pressedList[i],
                            onClick: () => onClick(i),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
}

class ProjectsRow extends StatelessWidget {
  const ProjectsRow({
    Key? key,
    required this.projects,
  }) : super(key: key);

  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    return projects.isEmpty
        ? Text(
            "No projects found",
            style: ETTextStyles.montRegular.copyWith(fontSize: 20),
          )
        : Wrap(
            children: List<Widget>.generate(
              projects.length,
              (i) {
                // TODO
                return ProjectCard.contact(
                  project: projects[i],
                  onTap: () => print("contact project"),
                );
              },
            ),
            spacing: 5,
          );
  }
}

class ProfilesRow extends StatelessWidget {
  const ProfilesRow({Key? key, required this.profiles}) : super(key: key);

  final List<User> profiles;

  @override
  Widget build(BuildContext context) {
    return profiles.isEmpty
        ? Text(
            "No profiles found",
            style: ETTextStyles.montRegular.copyWith(fontSize: 20),
          )
        : Wrap(
            children: List<Widget>.generate(
              profiles.length,
              (i) {
                // TODO
                return ProfileCard(
                  user: profiles[i],
                  onTap: () => print("on tap"),
                );
              },
            ),
            spacing: 5,
          );
  }
}
