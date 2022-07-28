import 'package:excellence_teams_client/ui/screens/projects/creating_project/creating_project.dart';
import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: CreateProjectScreen());
  }
}
