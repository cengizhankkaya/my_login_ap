import 'package:flutter/material.dart';
import 'package:my_login_app/src/constanst/colors.dart';
import 'package:my_login_app/src/constanst/sizes.dart';

/*-- Light & Dark Outlined Button Themes --*/

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  /*-- Light Theme --*/
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(),
          foregroundColor: tSecondaryColor,
          side: const BorderSide(color: tSecondaryColor),
          padding: const EdgeInsets.symmetric(vertical: tButtonHeight)));

  /*-- Dark Theme --*/
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(),
          foregroundColor: tWhiteColor,
          side: const BorderSide(color: tWhiteColor),
          padding: const EdgeInsets.symmetric(vertical: tButtonHeight)));
}
