import 'dart:math';

// import 'package:finalyearproject/Authentication/login.dart';
// import 'package:finalyearproject/Authentication/signup.dart';
import 'package:finalyearproject/Authentication/userlogin.dart';
import 'package:finalyearproject/features/shop/screens/home/screen/home_screen.dart';
import 'package:finalyearproject/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';
import 'package:persistent_shopping_cart/model/cart_model.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  await PersistentShoppingCart().init();
  
  
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
        home:   
     Login()
        //HomeScreen(),
        
        );
  }
}
