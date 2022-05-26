import 'package:excellence_teams_frontend/ui/resources/colors.dart';
import 'package:excellence_teams_frontend/ui/resources/text_styles.dart';
import 'package:excellence_teams_frontend/ui/widgets/button.dart';
import 'package:excellence_teams_frontend/ui/widgets/text.dart';
import 'package:excellence_teams_frontend/ui/widgets/text_field.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const breakpoint = 1000;

    return Flex(
      direction: Axis.horizontal,
      children: [
        const LoginLeftSide(),
        if (breakpoint < size.width) const LoginRightSide(),
      ],
    );
  }
}

class LoginRightSide extends StatelessWidget {
  const LoginRightSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        color: ETColors.grey,
        child: const Center(
          child: Text('Hier könnte Ihre Werbung stehen!'),
        ),
      ),
    );
  }
}

class LoginLeftSide extends StatefulWidget {
  const LoginLeftSide({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginLeftSide> createState() => _LoginLeftSideState();
}

class _LoginLeftSideState extends State<LoginLeftSide> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Flexible(
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
                  style: ETTextStyles.montSemiBold.copyWith(fontSize: 32),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            // TODO integrate viewmodel here
                            // TODO use isChecked value
                            isChecked = !isChecked;
                          });
                        },
                      ),
                      const SizedBox(
                        child: ETText(
                          "Remember me",
                          style: ETTextStyles.montRegular,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 165),
                        child: Text(
                          "Forgot password?",
                          style: ETTextStyles.montRegular.copyWith(
                            decoration: TextDecoration.underline,
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
                  onClick: () {
                    // TODO add click logic
                  },
                ),
                const SizedBox(height: 14),
                ETButton(
                  backgroundColor: ETColors.green,
                  label: 'create a new account',
                  onClick: () {
                    // TODO add click logic
                  },
                )
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
