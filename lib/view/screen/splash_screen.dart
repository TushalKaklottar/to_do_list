import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/controller/splash_controller.dart';
import 'package:to_do_list/utils/color.dart';
import 'package:to_do_list/utils/size.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    Size size = Responsive.screenSize(context);
    return GetBuilder(
      init: SplashController(),
      builder: (SplashController controller) {
        return Scaffold(
          backgroundColor: Colors.transparent, // Set scaffold background color to transparent
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColor.amber,
                  AppColor.amber1,
                  AppColor.amber2,
                ], // Add your desired gradient colors
              ),
            ),
            child: SafeArea(
              child: Center(
                child: Image.asset(
                  "assets/images/sp.png",
                  height: size.height / 6,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
