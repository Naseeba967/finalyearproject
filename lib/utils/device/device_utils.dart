import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DeviceUtils {
  static void hidKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color));
  }

  static bool isLandScapeOrientation(BuildContext context) {
    final viewInspects = View.of(context).viewInsets;
    return viewInspects.bottom == 0;
  }

  static bool isProtraitOrientation(BuildContext context) {
    final viewInspects = View.of(context).viewInsets;
    return viewInspects.bottom != 0;
  }

  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  static double getAppBarHeight() {
    return Sizes.appbarHeight;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  static double getSatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  static double getkeyboardHeight() {
    final viewInspects = View.of(Get.context!).viewInsets;
    return viewInspects.bottom;
  }

  static Future<bool> isKeyBoardVisible() async {
    final viewInspects = View.of(Get.context!).viewInsets;
    return viewInspects.bottom > 0;
  }

  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  static void vibration(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  static Future<void> setPreferredOrientation(
      List<DeviceOrientation> orientation) async {
    await SystemChrome.setPreferredOrientations(orientation);
  }
  
}
