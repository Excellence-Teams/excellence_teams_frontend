import 'package:excellence_teams_client/ui/resources/colors.dart';
import 'package:flutter/material.dart';

class ETTheme {
  static ThemeData get defaultTheme {
    return ThemeData(
      primaryColor: ETColors.green,
      scaffoldBackgroundColor: ETColors.white,
      focusColor: ETColors.limeGreen,
      hintColor: ETColors.grey,
      fontFamily: "Mont",
    );
  }
}
