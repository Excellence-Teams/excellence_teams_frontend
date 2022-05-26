import 'package:excellence_teams_frontend/ui/resources/colors.dart';
import 'package:excellence_teams_frontend/ui/resources/text_styles.dart';
import 'package:flutter/material.dart';

class ETTheme {
  static ThemeData get defaultTheme {
    return ThemeData(
      primaryColor: ETColors.limeGreen,
      scaffoldBackgroundColor: ETColors.white,
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(ETColors.white),
          textStyle: MaterialStateProperty.all(
            ETTextStyles.montSemiBold
                .copyWith(color: ETColors.white, fontSize: 20),
          ),
        ),
      ),
      fontFamily: "Mont",
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        buttonColor: ETColors.green,
      ),
    );
  }
}
