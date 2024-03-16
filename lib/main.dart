import 'dart:math';

import 'package:finalyearproject/Authentication/login.dart';
import 'package:finalyearproject/Authentication/signup.dart';
import 'package:finalyearproject/features/shop/screens/home/screen/home_screen.dart';
import 'package:finalyearproject/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Final Year Project',
        themeMode: ThemeMode.system,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        home: Login()
        //  HomeScreen(),
        
        );
  }
}
