import 'package:excellence_teams_client/data/repository/repositories.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/ui/resources/resources.dart';
import 'package:excellence_teams_client/ui/screens/profile/sign_up/sign_up.viewmodel.dart';
import 'package:excellence_teams_client/ui/widgets/button.dart';
import 'package:excellence_teams_client/ui/widgets/drop_down_search.dart';
import 'package:excellence_teams_client/ui/widgets/range_selector.dart';
import 'package:excellence_teams_client/ui/widgets/text.dart';
import 'package:excellence_teams_client/ui/widgets/text_field_validation.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const breakpoint = 1000;

    return Scaffold(
      body: Row(
        children: [
          const _SignUpLeftSide(),
          if (breakpoint < size.width) const _SignUpRightSide(),
        ],
      ),
    );
  }
}

class _SignUpRightSide extends StatelessWidget {
  const _SignUpRightSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        color: ETColors.grey,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
            child: Image.asset(ETImages.logo),
          ),
        ),
      ),
    );
  }
}

class _SignUpLeftSide extends StatefulWidget {
  const _SignUpLeftSide({
    Key? key,
  }) : super(key: key);

  @override
  State<_SignUpLeftSide> createState() => _SignUpLeftSideState();
}

class _SignUpLeftSideState extends State<_SignUpLeftSide> {
  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordRepeatController = TextEditingController();
  List<String> _selectedThemes = [];
  List<String> _selectedDegrees = [];
  List<String> _selectedSkills = [];
  List<String> _selectedLanguages = [];
  final _ageController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _linkedInController = TextEditingController();
  final _websiteController = TextEditingController();
  RangeValues _minMaxAvailableTime = RangeValues(20, 30);

  bool _checkForEmptyFields = false;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUpViewModel(
        api: getIt<Api>(),
        authenticationRepository: getIt<AuthenticationRepository>(),
        tagsRepository: context.read<TagsRepository>(),
        router: context.router,
      ),
      child: Builder(builder: (context) {
        final model = context.watch<SignUpViewModel>();
        _checkForEmptyFields =
            model.state.mapOrNull(fieldsEmpty: (_) => true) ?? false;
        return Flexible(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: <Widget>[
                      const SizedBox(height: 20),
                      ETText(
                        "Welcome aboard!",
                        style: ETTextStyles.montSemiBold.copyWith(fontSize: 32),
                      ),
                      const ETText(
                        "Welcome! Please enter your details.",
                        style: ETTextStyles.montBook,
                      ),
                      const SizedBox(height: 24),
                      ETTextFieldValidation(
                        _userNameController,
                        'Name',
                        Icons.account_box,
                        checkForEmptyFields: _checkForEmptyFields,
                        onChange: () => setState(() {}),
                      ),
                      const SizedBox(height: 16),
                      ETTextFieldValidation(
                        _emailController,
                        'Email',
                        Icons.mail_outline,
                        checkForEmptyFields: _checkForEmptyFields,
                        onChange: () => setState(() {}),
                      ),
                      const SizedBox(height: 16),
                      ETTextFieldValidation(
                        _passwordController,
                        'Password',
                        Icons.lock,
                        checkForEmptyFields: _checkForEmptyFields,
                        onChange: () => setState(() {}),
                        showInput: false,
                      ),
                      const SizedBox(height: 16),
                      ETTextFieldValidation(
                        _passwordRepeatController,
                        'Repeat Password',
                        Icons.lock,
                        checkForEmptyFields: _checkForEmptyFields,
                        onChange: () => setState(() {}),
                        showInput: false,
                      ),
                      const SizedBox(height: 16),
                      ETTextFieldValidation(
                        _ageController,
                        'Age (optional)',
                        Icons.cake,
                        checkForEmptyFields: _checkForEmptyFields,
                        onChange: () => setState(() {}),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        isOptional: true,
                      ),
                      const SizedBox(height: 16),
                      ETDropDownSearch<String>(
                          onSelected: (tags) => _selectedDegrees = tags,
                          tags: model.degrees,
                          label: 'Degrees',
                          icon: Icons.school),
                      const SizedBox(height: 16),
                      ETDropDownSearch<String>(
                          onSelected: (tags) => _selectedSkills = tags,
                          tags: model.skills,
                          label: 'Skills',
                          icon: Icons.local_activity),
                      const SizedBox(height: 16),
                      ETDropDownSearch<String>(
                          onSelected: (tags) => _selectedThemes = tags,
                          tags: model.themes,
                          label: 'Themes / Interest',
                          icon: Icons.local_activity),
                      const SizedBox(height: 16),
                      ETTextFieldValidation(
                        _descriptionController,
                        'Description (optional)',
                        Icons.accessibility,
                        checkForEmptyFields: _checkForEmptyFields,
                        onChange: () => setState(() {}),
                        isOptional: true,
                      ),
                      const SizedBox(height: 16),
                      ETTextFieldValidation(
                        _linkedInController,
                        'LinkedIn Account (optional)',
                        Icons.account_circle_sharp,
                        checkForEmptyFields: _checkForEmptyFields,
                        onChange: () => setState(() {}),
                        isOptional: true,
                      ),
                      const SizedBox(height: 16),
                      ETTextFieldValidation(
                        _websiteController,
                        'Website (optional)',
                        Icons.web_asset_outlined,
                        checkForEmptyFields: _checkForEmptyFields,
                        onChange: () => setState(() {}),
                        isOptional: true,
                      ),
                      const SizedBox(height: 16),
                      ETDropDownSearch<String>(
                          onSelected: (tags) => _selectedLanguages = tags,
                          tags: model.languages,
                          label: 'Languages',
                          icon: Icons.abc),
                      const SizedBox(height: 16),
                      ETRangeSlider(
                        description: "Available Time (in hours per week)",
                        initialValues: _minMaxAvailableTime,
                        maxValues: RangeValues(10, 80),
                        onChanged: (values) => _minMaxAvailableTime = values,
                        divisions: 7,
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                          height: 20,
                          child: model.state.mapOrNull(
                            fieldsEmpty: (_) =>
                                _errorText('Please insert all required data!'),
                            passwordMismatch: (_) =>
                                _errorText('Both passwords are not the same!'),
                            emailInUse: (_) =>
                                _errorText('Email is already in use!'),
                            weakPassword: (_) =>
                                _errorText('Password is too weak!'),
                            unknownError: (_) => _errorText(
                                'An unknown error occurred, please try again!'),
                          )),
                      const SizedBox(height: 8),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ETButton(
                    label: 'create new account',
                    onClick: () => _onCreateAccount(model),
                    state: model.state.mapOrNull(
                            loading: (_) => ButtonState.loading(),
                            success: (_) => ButtonState.success()) ??
                        ButtonState.normal(),
                    successLabel: "Account created successfully!",
                  ),
                  const SizedBox(height: 16),
                  ETButton(
                      backgroundColor: ETColors.green,
                      label: ' I already have an account',
                      onClick: () => model.onAlreadyAccount()),
                  const SizedBox(height: 16),
                ],
              ),
            ],
          ),
        ));
      }),
    );
  }

  Widget _errorText(String text) => ETText(
        text,
        style: ETTextStyles.montBold.copyWith(
          fontSize: 16,
          color: ETColors.lightRed,
        ),
      );

  void _onCreateAccount(SignUpViewModel model) {
    model.userInput(
      name: _userNameController.text,
      email: _emailController.text,
      password: _passwordController.text,
      passwordConfirmation: _passwordRepeatController.text,
      age: int.tryParse(_ageController.text),
      degrees: _selectedDegrees,
      skills: _selectedSkills,
      description: _descriptionController.text,
      linkedIn: _linkedInController.text,
      website: _websiteController.text,
      languages: _selectedLanguages,
      interests: _selectedThemes,
      minAvailableTime: _minMaxAvailableTime.start.toInt(),
      maxAvailableTime: _minMaxAvailableTime.end.toInt(),
    );
  }
}
