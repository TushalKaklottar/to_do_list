import 'dart:async';
import 'package:get/get.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    Timer.periodic(
        const Duration(seconds: 3),
            (timer) {
          Get.offNamed("/home");
          timer.cancel();
        }
    );
  }
}