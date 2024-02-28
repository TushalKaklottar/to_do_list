import 'package:get/get.dart';
import 'package:to_do_list/view/screen/add_task_page.dart';
import 'package:to_do_list/view/screen/homepage.dart';
import 'package:to_do_list/view/screen/splash_screen.dart';

class MyRoutes {

  static const String _splash = "/";
  static const String _home = "/home";
  static const String _addTask = "/addTask";
  // static const Duration _duration = Duration(milliseconds: 400);

  static String getSplashRoutes() => _splash;
  static String getHomeRoutes() => _home;
  static String getAddTaskRoutes() => _addTask;

  static List<GetPage> routes = [
    GetPage(
        name: _splash,
        page: () =>  const SplashScreen(),
      transition: Transition.downToUp,
    ),
    GetPage(
        name: _home,
      page: () => HomePage(),
    ),
    GetPage(
        name: _addTask,
        page: () => const AddTaskPage(),
    )
  ];
}
