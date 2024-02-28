import 'dart:async';
import 'package:get/get.dart';

// splash screen controller for Get-x state management
class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    Timer.periodic(
        const Duration(seconds: 30),
            (timer) {
          Get.offNamed("/home");
          timer.cancel();
        }
    );
  }
}