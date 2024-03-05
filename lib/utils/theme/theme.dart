import 'package:finalyearproject/utils/theme/custom_theme/appbar_theme.dart';
import 'package:finalyearproject/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:finalyearproject/utils/theme/custom_theme/check_box_theme.dart';
import 'package:finalyearproject/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:finalyearproject/utils/theme/custom_theme/text_field_theme.dart';
import 'package:finalyearproject/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: AppTextTheme.lightTextTheme,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElvatedButtonTheme.lightElvatedButtonTheme,
    appBarTheme: APPBarTheme.lightAppBartheme,
    checkboxTheme: CheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: ButtomSheetTheme.lightButtonSheetTheme,
    inputDecorationTheme: TextFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    scaffoldBackgroundColor: Colors.black,
    elevatedButtonTheme: ElvatedButtonTheme.darkElvatedButtonTheme,
    appBarTheme: APPBarTheme.darkAppBarTheme,
    checkboxTheme: CheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: ButtomSheetTheme.darkButtonSheetTheme,
    inputDecorationTheme: TextFieldTheme.darkInputDecorationTheme,
  );
}
