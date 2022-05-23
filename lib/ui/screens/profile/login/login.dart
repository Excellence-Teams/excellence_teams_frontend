import 'package:excellence_teams_frontend/ui/resources/colors.dart';
import 'package:excellence_teams_frontend/ui/resources/text_styles.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const double breakpoint = 1000;
    
    const int paneProportion = 50;

    if (breakpoint < size.width) {
      return Flex(
        direction: Axis.horizontal,
        children: const [
          LoginLeftSide(paneProportion: paneProportion),
          LoginRightSide(paneProportion: paneProportion),
        ],
      );
    } else {
      return Flex(
        direction: Axis.horizontal,
        children: const [
          LoginLeftSide(paneProportion: paneProportion),
        ],
      );
    }
  }
}

class LoginRightSide extends StatelessWidget {
  const LoginRightSide({
    Key? key,
    required this.paneProportion,
  }) : super(key: key);

  final int paneProportion;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 100 - paneProportion,
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
    required this.paneProportion,
  }) : super(key: key);

  final int paneProportion;

  @override
  State<LoginLeftSide> createState() => _LoginLeftSideState();
}

class _LoginLeftSideState extends State<LoginLeftSide> {
  @override
  Widget build(BuildContext context) {
    bool? isChecked = false;
    return Flexible(
      flex: widget.paneProportion,
      child: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            alignment: Alignment.center,
            color: ETColors.white,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome back",
                    style: ETTextStyles.montTitle,
                  ),
                  const Text(
                    "Welcome back! Please enter your details.",
                    style: ETTextStyles.montBook,
                  ),
                  const SizedBox(height: 32),
                  const SizedBox(
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ETColors.grey, width: 1.0),
                        ),
                        hintText: 'Email',
                        labelText: 'Email',
                        suffixIcon: Icon(
                          Icons.mail_outline,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const SizedBox(
                    width: 400,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ETColors.green, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ETColors.grey, width: 1.0),
                        ),
                        hintText: 'Password',
                        labelText: 'Password',
                        suffixIcon: Icon(
                          Icons.lock,
                        ),
                      ),
                    ),
                  ),
                  
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Checkbox(
                    value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    const Text("Remember my login"),
                  ]
              ),
            ]),
          )),

    );
  }
}
