import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/utils/routes.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To-Do List',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: MyRoutes.getSplashRoutes(),
      getPages: MyRoutes.routes,
    );
  }
}
