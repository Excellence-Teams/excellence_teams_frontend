import 'package:auto_route/auto_route.dart';
import 'package:excellence_teams_client/ui/resources/resources.dart';
import 'package:excellence_teams_client/ui/widgets/text.dart';
import 'package:flutter/material.dart';

class ETTopNavigationBar extends StatelessWidget {
  final TabsRouter tabsRouter;
  const ETTopNavigationBar({Key? key, required this.tabsRouter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ETColors.white,
        border: Border(
          bottom: BorderSide(
            color: ETColors.grey.withOpacity(0.5),
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _logo(),
          InkWell(
            child: _tabText("SEARCH"),
            onTap: () => tabsRouter.setActiveIndex(0),
          ),
          InkWell(
            child: _tabText("NEW PROJECT"),
            onTap: () => tabsRouter.setActiveIndex(1),
          ),
          InkWell(
            child: _tabText("BOOKMARKS"),
            onTap: () => tabsRouter.setActiveIndex(2),
          ),
          InkWell(
            child: _tabText("PROFILE"),
            onTap: () => tabsRouter.setActiveIndex(3),
          ),
        ],
      ),
    );
  }

  Widget _logo() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(ETImages.logo),
    );
  }

  Widget _tabText(String text) {
    return ETText(
      text,
      style: ETTextStyles.montBold.copyWith(
        color: ETColors.black,
        fontSize: 20,
      ),
    );
  }
}
