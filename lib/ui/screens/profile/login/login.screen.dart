import 'package:excellence_teams_client/data/repository/authentication.repository.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/ui/resources/resources.dart';
import 'package:excellence_teams_client/ui/screens/profile/login/login.viewmodel.dart';
import 'package:excellence_teams_client/ui/widgets/button.dart';
import 'package:excellence_teams_client/ui/widgets/text.dart';
import 'package:excellence_teams_client/ui/widgets/text_field.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const breakpoint = 1000;

    return Material(
      child: Row(
        children: [
          Expanded(child: const _LoginLeftSide()),
          if (breakpoint < size.width)
            Expanded(
              child: const _LoginRightSide(),
            ),
        ],
      ),
    );
  }
}

class _LoginRightSide extends StatelessWidget {
  const _LoginRightSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ETColors.grey,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
          child: Image.asset(ETImages.logo),
        ),
      ),
    );
  }
}

class _LoginLeftSide extends StatefulWidget {
  const _LoginLeftSide({
    Key? key,
  }) : super(key: key);

  @override
  State<_LoginLeftSide> createState() => _LoginLeftSideState();
}

class _LoginLeftSideState extends State<_LoginLeftSide> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _rememberLogin = false;
  bool _checkForEmptyFields = false;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginViewModel(
        authenticationRepository: getIt<AuthenticationRepository>(),
        router: context.router,
      ),
      child: Builder(
        builder: (context) {
          final model = context.watch<LoginViewModel>();
          _checkForEmptyFields =
              model.state.mapOrNull(fieldsEmpty: (_) => true) ?? false;
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ETText(
                          "Welcome back",
                          style:
                              ETTextStyles.montSemiBold.copyWith(fontSize: 32),
                        ),
                        const ETText(
                          "Welcome back! Please enter your details.",
                          style: ETTextStyles.montBook,
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                            width: 400,
                            child: ETTextField(
                              controller: _emailController,
                              hintText: 'Email',
                              trailingIcon: Icon(
                                Icons.mail_outline,
                                color: _emailController.text.isEmpty &&
                                        _checkForEmptyFields
                                    ? ETColors.lightRed
                                    : ETColors.grey,
                              ),
                              inputMissing: _emailController.text.isEmpty &&
                                  _checkForEmptyFields,
                              onChange: () => setState(() {}),
                            )),
                        const SizedBox(height: 14),
                        SizedBox(
                            width: 400,
                            child: ETTextField(
                              controller: _passwordController,
                              inputVisible: false,
                              hintText: 'Password',
                              trailingIcon: Icon(
                                Icons.lock,
                                color: _passwordController.text.isEmpty &&
                                        _checkForEmptyFields
                                    ? ETColors.lightRed
                                    : ETColors.grey,
                              ),
                              inputMissing: _passwordController.text.isEmpty &&
                                  _checkForEmptyFields,
                              onChange: () => setState(() {}),
                            )),
                        const SizedBox(height: 14),
                        Container(
                          constraints: BoxConstraints(minWidth: 400),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: _rememberLogin,
                                    onChanged: (_) {
                                      setState(
                                        () => _rememberLogin = !_rememberLogin,
                                      );
                                    },
                                  ),
                                  const SizedBox(
                                    child: ETText(
                                      "Remember me",
                                      style: ETTextStyles.montRegular,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: SizedBox(
                                  height: 20,
                                  child: ETText(
                                    model.state.mapOrNull(
                                          fieldsEmpty: (_) =>
                                              'Please fill in all fields',
                                          unknownError: (_) =>
                                              'An unknown error occurred, please try again!',
                                          userNotFound: (_) => 'User not found',
                                          wrongPassword: (_) =>
                                              'Wrong password',
                                        ) ??
                                        "",
                                    style: ETTextStyles.montBold.copyWith(
                                      fontSize: 16,
                                      color: ETColors.lightRed,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 14),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ETButton(
                          label: 'sign in',
                          onClick: () => model.userInput(
                            email: _emailController.text,
                            password: _passwordController.text,
                            rememberLogin: _rememberLogin,
                          ),
                          state: model.state.mapOrNull(
                                  loading: (_) => ButtonState.loading(),
                                  success: (_) => ButtonState.success()) ??
                              ButtonState.normal(),
                          successLabel: "signed in!",
                        ),
                        const SizedBox(height: 14),
                        ETButton(
                          backgroundColor: ETColors.green,
                          label: 'create a new account',
                          onClick: () => model.onCreateNewAccount(),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
