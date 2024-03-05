import 'package:flutter/material.dart';

class ChipTheme {
  static ChipThemeData lightChipThemeData = ChipThemeData(
    disabledColor:Colors.grey.withOpacity(0.4) ,
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor:Colors.blue ,
    padding:const EdgeInsets.symmetric(horizontal: 12,vertical: 12) ,
    checkmarkColor: Colors.white
  );
   static ChipThemeData darkChipThemeData = ChipThemeData(
    disabledColor:Colors.grey.withOpacity(0.4) ,
    labelStyle: const TextStyle(color: Colors.white),
    selectedColor:Colors.blue ,
    padding:const EdgeInsets.symmetric(horizontal: 12,vertical: 12) ,
    checkmarkColor: Colors.white
  );
}
