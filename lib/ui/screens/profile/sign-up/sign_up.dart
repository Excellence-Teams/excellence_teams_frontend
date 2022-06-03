//import 'package:auto_route/auto_route.dart';
import 'package:excellence_teams_frontend/ui/resources/colors.dart';
import 'package:excellence_teams_frontend/ui/resources/text_styles.dart';
import 'package:excellence_teams_frontend/ui/widgets/button.dart';
import 'package:excellence_teams_frontend/ui/widgets/text.dart';
import 'package:excellence_teams_frontend/ui/widgets/text_field.dart';

import 'package:flutter/material.dart';

//import '../../../../routes/router.gr.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const breakpoint = 1000;

    return Flex(
      direction: Axis.horizontal,
      children: [
        const SignUpLeftSide(),
        if (breakpoint < size.width) const SignUpRightSide(),
      ],
    );
  }
}

class SignUpRightSide extends StatelessWidget {
  const SignUpRightSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        color: ETColors.grey,
        child: const Center(
          child: ETText('Hier könnte Ihre Werbung stehen!'),
        ),
      ),
    );
  }
}

class SignUpLeftSide extends StatefulWidget {
  const SignUpLeftSide({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpLeftSide> createState() => _SignUpLeftSideState();
}

class _SignUpLeftSideState extends State<SignUpLeftSide> {
  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordRepeatController = TextEditingController();
  final _degreesController = TextEditingController();
  final _skillsController = TextEditingController();
  final _languagesController = TextEditingController();
  final _ageController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _linkedInController = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
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
                  const SizedBox(height: 20),
                  SizedBox(
                      width: 400,
                      child: ETTextField(
                        controller: _userNameController,
                        hintText: 'User Name',
                        trailingIcon: const Icon(
                          Icons.account_box,
                          color: ETColors.grey,
                        ),
                      )),
                  const SizedBox(height: 14),
                  SizedBox(
                      width: 400,
                      child: ETTextField(
                        controller: _emailController,
                        hintText: 'Email',
                        trailingIcon: const Icon(
                          Icons.mail_outline,
                          color: ETColors.grey,
                        ),
                      )),
                  const SizedBox(height: 14),
                  SizedBox(
                      width: 400,
                      child: ETTextField(
                        controller: _passwordController,
                        inputVisible: false,
                        hintText: 'Password',
                        trailingIcon: const Icon(
                          Icons.lock,
                          color: ETColors.grey,
                        ),
                      )),
                  const SizedBox(height: 14),
                  SizedBox(
                      width: 400,
                      child: ETTextField(
                        controller: _passwordRepeatController,
                        inputVisible: false,
                        hintText: 'Reapeat Password',
                        trailingIcon: const Icon(
                          Icons.lock,
                          color: ETColors.grey,
                        ),
                      )),
                  const SizedBox(height: 14),
                  SizedBox(
                      width: 400,
                      child: ETTextField(
                        controller: _ageController,
                        hintText: 'Age (optional)',
                        trailingIcon: const Icon(
                          Icons.cake,
                          color: ETColors.grey,
                        ),
                      )),
                  const SizedBox(height: 14),
                  SizedBox(
                      width: 400,
                      child: ETTextField(
                        controller: _degreesController,
                        hintText: 'Degrees',
                        trailingIcon: const Icon(
                          Icons.school,
                          color: ETColors.grey,
                        ),
                      )),
                  const SizedBox(height: 14),
                  SizedBox(
                      width: 400,
                      child: ETTextField(
                        controller: _skillsController,
                        hintText: 'Skills',
                        trailingIcon: const Icon(
                          Icons.local_activity,
                          color: ETColors.grey,
                        ),
                      )),
                  const SizedBox(height: 14),
                  SizedBox(
                      width: 400,
                      child: ETTextField(
                        controller: _descriptionController,
                        hintText: 'Description (optional)',
                        trailingIcon: const Icon(
                          Icons.accessibility,
                          color: ETColors.grey,
                        ),
                      )),
                  const SizedBox(height: 14),
                  SizedBox(
                      width: 400,
                      child: ETTextField(
                        controller: _linkedInController,
                        hintText: 'LinkedIn Account (optional)',
                        trailingIcon: const Icon(
                          Icons.account_circle_sharp,
                          color: ETColors.grey,
                        ),
                      )),
                  const SizedBox(height: 14),
                  SizedBox(
                      width: 400,
                      child: ETTextField(
                        controller: _languagesController,
                        hintText: 'Languages',
                        trailingIcon: const Icon(
                          Icons.abc,
                          color: ETColors.grey,
                        ),
                      )),
                  const SizedBox(height: 20),
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
                    label: 'sign up',
                    onClick: () {
                      // TODO add click logic
                    },
                  ),
                  const SizedBox(height: 14),
                  ETButton(
                      backgroundColor: ETColors.green,
                      label: ' I already have an account',
                      onClick: () {
                        // TODO add click logic
                      }),
                  const SizedBox(height: 14),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
