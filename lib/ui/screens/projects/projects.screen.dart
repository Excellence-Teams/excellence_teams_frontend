import 'package:excellence_teams_frontend/ui/widgets/text.dart';
import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const ETText("Projects"),
      color: Colors.amber,
    );
  }
}
