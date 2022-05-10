import 'package:excellence_teams_frontend/ui/resources/text_styles.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        "Profile",
        style: ETTextStyles.montSemiBold,
      ),
      color: Colors.lime,
    );
  }
}
