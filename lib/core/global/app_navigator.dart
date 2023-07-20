import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppNavigator {
  static void navigateTo({
    required Widget Function() screen,
    Transition? transition = Transition.rightToLeft,
    Duration? duration = const Duration(milliseconds: 400),
    Curve? curve = Curves.linear,
  }) {
    Get.to(
      screen,
      transition: transition,
      duration: duration,
      curve: curve,
    );
  }

  static void getBack() {
    Get.back();
  }

  static void navigateAndFinish({
    required Widget Function() screen,
    Transition? transition = Transition.rightToLeftWithFade,
    Duration? duration = const Duration(milliseconds: 400),
    Curve? curve = Curves.linear,
  }) {
    Get.off(
      screen,
      transition: transition,
      duration: duration,
      curve: curve,
    );
  }

  static void navigateAndFinishAll({
    required Widget Function() screen,
    Transition? transition = Transition.rightToLeft,
    Duration? duration = const Duration(milliseconds: 400),
    Curve? curve = Curves.linear,
  }) {
    Get.offAll(
      screen,
      transition: transition,
      duration: duration,
      curve: curve,
    );
  }
}
