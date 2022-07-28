import 'package:dropdown_search/dropdown_search.dart';
import 'package:excellence_teams_client/data/models/user.model.dart';
import 'package:excellence_teams_client/data/repository/repositories.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/ui/resources/colors.dart';
import 'package:excellence_teams_client/ui/resources/text_styles.dart';
import 'package:excellence_teams_client/ui/screens/projects/creating_project/creating_project.viewmodel.dart';
import 'package:excellence_teams_client/ui/widgets/button.dart';
import 'package:excellence_teams_client/ui/widgets/drop_down_search.dart';
import 'package:excellence_teams_client/ui/widgets/text.dart';
import 'package:excellence_teams_client/ui/widgets/text_field_validation.dart';

import 'package:flutter/material.dart';

class CreateProjectScreen extends StatefulWidget {
  const CreateProjectScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CreateProjectScreen> createState() => _CreateProjectScreenState();
}

class _CreateProjectScreenState extends State<CreateProjectScreen> {
  final _titleController = TextEditingController();
  List<User> _selectedMembers = [];
  String? _selectedType;
  List<String> _selectedThemes = [];
  final _descriptionController = TextEditingController();

  List<String> _selectedDegrees = [];
  List<String> _selectedSkills = [];
  List<String> _selectedLanguages = [];

  bool _checkForEmptyFields = false;

  static Widget _signedOut(VoidCallback toSignIn) {
    return Container(
      alignment: Alignment.topCenter,
      child: Card(
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              Text(
                "You are not signed in",
                style: ETTextStyles.montBold.copyWith(fontSize: 20),
              ),
              const SizedBox(height: 16),
              Text(
                "Please sign in or create an account to create a project",
                style: ETTextStyles.montRegular.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 16),
              ETButton(label: "take me to sign in", onClick: toSignIn),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CreatingProjectViewModel(
        authenticationRepository: getIt<AuthenticationRepository>(),
        projectRepository: context.read<ProjectRepository>(),
        tagsRepository: context.read<TagsRepository>(),
        userRepository: context.read<UserRepository>(),
        router: context.router,
      ),
      child: Builder(
        builder: (context) {
          final model = context.watch<CreatingProjectViewModel>();

          _checkForEmptyFields =
              model.state.mapOrNull(fieldsEmpty: (_) => true) ?? false;
          final users = model.users;
          final types = model.types;
          final themes = model.themes;
          final skills = model.skills;
          final degrees = model.degrees;
          final languages = model.languages;

          return model.state
                  .mapOrNull(signedOut: (_) => _signedOut(model.toSignIn)) ??
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(24),
                          child: Column(
                            children: [
                              ETText(
                                "Create a new Project",
                                style: ETTextStyles.montSemiBold
                                    .copyWith(fontSize: 32),
                              ),
                              const ETText(
                                "Be creative",
                                style: ETTextStyles.montBook,
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                width: 400,
                                child: ETTextFieldValidation(
                                  _titleController,
                                  'Title',
                                  Icons.title,
                                  checkForEmptyFields: _checkForEmptyFields,
                                  onChange: () => setState(() {}),
                                ),
                              ),
                              const SizedBox(height: 14),
                              SizedBox(
                                width: 400,
                                child: ETDropDownSearch<User>(
                                  onSelected: (users) =>
                                      _selectedMembers = users,
                                  label: 'Members',
                                  icon: Icons.person,
                                  tags: users,
                                ),
                              ),
                              const SizedBox(height: 14),
                              SizedBox(
                                width: 400,
                                child: DropdownSearch<String>(
                                  items: types,
                                  onChanged: (type) => _selectedType = type,
                                  dropdownDecoratorProps:
                                      ETDropDownSearch.dropDownDecoratorProps(
                                          Icons.type_specimen, "Project Type"),
                                ),
                              ),
                              const SizedBox(height: 14),
                              SizedBox(
                                width: 400,
                                child: ETDropDownSearch<String>(
                                  onSelected: (tags) => _selectedThemes = tags,
                                  icon: Icons.local_activity,
                                  label: "Themes / Interests",
                                  tags: themes,
                                ),
                              ),
                              const SizedBox(height: 14),
                              SizedBox(
                                width: 400,
                                child: ETTextFieldValidation(
                                  _descriptionController,
                                  'Description',
                                  Icons.description,
                                  checkForEmptyFields: _checkForEmptyFields,
                                  onChange: () => setState(() {}),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(24),
                          child: Column(
                            children: [
                              ETText(
                                "Searching for members?",
                                style: ETTextStyles.montSemiBold
                                    .copyWith(fontSize: 32),
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                width: 400,
                                child: ETDropDownSearch<String>(
                                  onSelected: (tags) => _selectedSkills = tags,
                                  icon: Icons.school,
                                  label: "preferred Skills",
                                  tags: skills,
                                ),
                              ),
                              const SizedBox(height: 14),
                              SizedBox(
                                width: 400,
                                child: ETDropDownSearch<String>(
                                  icon: Icons.school_outlined,
                                  label: "preferred Degrees",
                                  onSelected: (tags) => _selectedDegrees = tags,
                                  tags: degrees,
                                ),
                              ),
                              const SizedBox(height: 14),
                              SizedBox(
                                width: 400,
                                child: ETDropDownSearch<String>(
                                  icon: Icons.language,
                                  label: "preferred Languages",
                                  onSelected: (tags) =>
                                      _selectedLanguages = tags,
                                  tags: languages,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          height: 24,
                          child: model.state.mapOrNull(
                            error: (_) => _errorText(
                                'An unknown error occurred, please try again!'),
                            fieldsEmpty: (_) =>
                                _errorText('Please fill out all fields!'),
                          )),
                      ETButton(
                        backgroundColor: ETColors.green,
                        label: 'Create new project',
                        onClick: () => _onCreateProject(model),
                        state: model.state.mapOrNull(
                                loading: (_) => ButtonState.loading(),
                                success: (_) => ButtonState.success()) ??
                            ButtonState.normal(),
                        successLabel: "Project created!",
                      ),
                    ],
                  ),
                ),
              );
        },
      ),
    );
  }

  Widget _errorText(String text) => ETText(
        text,
        style: ETTextStyles.montBold.copyWith(
          fontSize: 16,
          color: ETColors.lightRed,
        ),
      );

  void _onCreateProject(CreatingProjectViewModel model) {
    model.createProject(
      title: _titleController.text,
      members: _selectedMembers,
      type: _selectedType,
      themes: _selectedThemes,
      description: _descriptionController.text,
      skills: _selectedSkills,
      degrees: _selectedDegrees,
      languages: _selectedLanguages,
    );
  }
}
