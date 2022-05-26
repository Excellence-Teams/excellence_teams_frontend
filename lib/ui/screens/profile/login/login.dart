import 'dart:io';

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
                  const Text(
                    "Welcome back",
                    style: ETTextStyles.montTitle,
                  ),
                  const Text(
                    "Welcome back! Please enter your details.",
                    style: ETTextStyles.montBook,
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ETColors.grey, width: 1.0),
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
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 1),
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
                  const SizedBox(height: 14),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              
                            });
                          },
                        ),
                        const SizedBox(
                          child: Text("Remember me",
                          style: ETTextStyles.montRegular),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(165,0,0,0),
                            child: Text("Forgot password?", 
                              style: ETTextStyles.montRegular),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                ]
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: ETColors.black,
                      minimumSize: const Size(240, 40),
                      maximumSize: const Size(240, 40),
                      shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                    ),
                    child: const Text('Sign in', style: ETTextStyles.montWhite),
                    onPressed: () {},
                  ),
                  const SizedBox(height: 14),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: ETColors.green,
                      minimumSize: const Size(240, 40),
                      maximumSize: const Size(240, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                    child: const Text('Create a new Account', style: ETTextStyles.montWhite),
                    onPressed: () {},
                  ),
                ],



              ),
            ],
          ),
        ],
      )
      
    );
  }
}
