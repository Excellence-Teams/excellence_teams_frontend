import 'package:auto_route/auto_route.dart';
import 'package:excellence_teams_frontend/ui/resources/colors.dart';
import 'package:excellence_teams_frontend/ui/resources/text_styles.dart';
import 'package:flutter/material.dart';

class ETTopNavigationBar extends StatelessWidget {
  final TabsRouter tabsRouter;
  const ETTopNavigationBar({Key? key, required this.tabsRouter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: const BoxDecoration(
        color: ETColors.white,
        boxShadow: [BoxShadow(color: ETColors.grey, blurRadius: 10)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            child: _tabText("SEARCH"),
            onTap: () => tabsRouter.setActiveIndex(0),
          ),
          InkWell(
            child: _tabText("PROJECTS"),
            onTap: () => tabsRouter.setActiveIndex(1),
          ),
          InkWell(
            child: _tabText("PROFILE"),
            onTap: () => tabsRouter.setActiveIndex(2),
          ),
        ],
      ),
    );
  }

  Widget _tabText(String text) {
    return Text(
      text,
      style: ETTextStyles.montSemiBold
          .copyWith(color: ETColors.black, fontSize: 25),
    );
  }
}
