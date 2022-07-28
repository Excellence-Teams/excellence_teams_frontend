import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/ui/widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) => PreferredSize(
        preferredSize: const Size(double.infinity, 68),
        child: ETTopNavigationBar(
          tabsRouter: tabsRouter,
        ),
      ),
      routes: [
        SearchRoute(),
        ProjectsRoute(),
        BookmarksRoute(),
        ProfileDetailsRoute(),
      ],
    );
  }
}
