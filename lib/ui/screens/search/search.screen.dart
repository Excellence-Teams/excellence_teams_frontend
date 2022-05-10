import 'package:excellence_teams_frontend/ui/resources/colors.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text("Search"),
      color: ETColors.limeGreen,
    );
  }
}
