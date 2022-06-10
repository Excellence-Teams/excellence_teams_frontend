import 'dart:html';

import 'package:excellence_teams_frontend/ui/resources/colors.dart';
import 'package:excellence_teams_frontend/ui/widgets/text.dart';
import 'package:flutter/material.dart';

import '../../resources/images.dart';
import '../../resources/text_styles.dart';
import 'login/login.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1000) {
          return Row(
            children: [
              ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 360),
                  child: ProfileLeftSide()),
              ProfileRightSide()
            ],
          );
        } else {
          return Column(
            children: [ProfileLeftSide(), ProfileRightSide()],
          );
        }
      },
    );
  }
}

class ProfileLeftSide extends StatefulWidget {
  const ProfileLeftSide({Key? key}) : super(key: key);

  @override
  State<ProfileLeftSide> createState() => _ProfileLeftSideState();
}

class _ProfileLeftSideState extends State<ProfileLeftSide> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              "Peter Enis",
              style: ETTextStyles.montSemiBold.copyWith(fontSize: 32),
            ),
            const SizedBox(height: 20),
            ETText(
              "About",
              style: ETTextStyles.montRegular.copyWith(fontSize: 24),
            ),
            /*
            Expanded(
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            )
            */
          ],
        ));
  }
}

class ProfileRightSide extends StatefulWidget {
  const ProfileRightSide({Key? key}) : super(key: key);

  @override
  State<ProfileRightSide> createState() => _ProfileRightSideState();
}

class _ProfileRightSideState extends State<ProfileRightSide> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          color: ETColors.grey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 30.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          decoration: const BoxDecoration(
                              color: ETColors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            children: [
                              ETText("Skills",
                                  style: ETTextStyles.montSemiBold
                                      .copyWith(fontSize: 32)),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          decoration: const BoxDecoration(
                              color: ETColors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            children: [
                              ETText("Interests",
                                  style: ETTextStyles.montSemiBold
                                      .copyWith(fontSize: 32)),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 30.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          decoration: const BoxDecoration(
                              color: ETColors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            children: [
                              ETText("Projects",
                                  style: ETTextStyles.montSemiBold
                                      .copyWith(fontSize: 32)),
                            ],
                          )),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
