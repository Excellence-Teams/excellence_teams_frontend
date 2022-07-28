import 'package:excellence_teams_client/data/repository/repositories.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class ProfileErrorScreen extends StatelessWidget {
  const ProfileErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO redesign this screen
    return Material(
        child: Column(
      children: [
        Text("something went wrong while loading the profile ..."),
        ETButton(
          label: "Login again",
          onClick: () {
            getIt<AuthenticationRepository>().signOut();
            context.router.push(MainRoute(children: [LoginRoute()]));
          },
        )
      ],
    ));
  }
}
