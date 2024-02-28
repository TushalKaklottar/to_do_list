// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:to_do_list/controller/task_controller.dart';
// import 'package:to_do_list/model/task_model.dart';
// import 'package:to_do_list/utils/color.dart';
// import 'package:to_do_list/utils/size.dart';
// import 'package:to_do_list/utils/textTheme.dart';
// import 'package:to_do_list/view/component/custom_button.dart';
// import 'package:to_do_list/view/component/taskItem.dart';
//
// class HomePage extends StatelessWidget {
//    HomePage({super.key});
//
//   // state management Get-x Controller Attach
//   final TaskController taskController = Get.put(TaskController());
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = Responsive.screenSize(context);
//     return Scaffold(
//       appBar: AppBar(
//           backgroundColor: AppColor.amber,
//         title: Text(
//           "My To-Do",
//           style: tTextStyleBoldBlack(20),),
//       ),
//       body: Column(
//           children:  [
//             // Expand splits the UI into two parts
//             Expanded(
//               child: Obx(() {
//                 if(taskController.tasks.isEmpty) {
//                   return Padding(
//                     padding: const EdgeInsets.all(16),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                             "assets/images/1.png",
//                           height: size.height / 4,
//                         ),
//                     Text(
//                       'No tasks added yet.',
//                       style: TextStyle(fontSize: 16, color: Colors.grey),
//                     ),
//                   );
//                       ],
//                     ),
//                   );
//                 } else {
//                   return ListView.separated(
//                     itemCount: taskController.tasks.length,
//                     separatorBuilder: (context, index) => const Divider(
//                       thickness: 1.0, // Adjust the thickness as needed
//                       color: AppColor.black, // Change the color to black
//                     ),
//                     itemBuilder: (context, index) {
//                       Task task = taskController.tasks[index];
//                       return TaskItem(task: task);
//                     },
//                   );
//                 }
//               }
//               ),
//             ),
//
//             Padding(
//               padding: const EdgeInsets.all(8),
//               child: Row(
//                 children: [
//                   // Expand splits the UI into two parts
//                   Expanded(
//                     // Custom Add Task Widget attached
//                     child: CustomButton(
//                       onPressed: () {
//                         Get.toNamed('/addTask');
//                       },
//                       text: 'Create new task',
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/controller/task_controller.dart';
import 'package:to_do_list/model/task_model.dart';
import 'package:to_do_list/utils/color.dart';
import 'package:to_do_list/utils/size.dart';
import 'package:to_do_list/utils/textTheme.dart';
import 'package:to_do_list/view/component/custom_button.dart';
import 'package:to_do_list/view/component/taskItem.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key});

  // state management Get-x Controller Attach
  final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    Size size = Responsive.screenSize(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.amber,
        title: Text(
          "My To-Do",
          style: tTextStyleBoldBlack(20),
        ),
      ),
      body: Column(
        children: [
          // Expand splits the UI into two parts
          Expanded(
            child: Obx(() {
              if (taskController.tasks.isEmpty) {
                return Padding(
                  padding:  const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/1.png",
                        height: size.height / 4,
                      ),
                       Text(
                        'No tasks added yet.',
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColor.grey,

                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return ListView.separated(
                  itemCount: taskController.tasks.length,
                  separatorBuilder: (context, index) => const Divider(
                    thickness: 1.0, // Adjust the thickness as needed
                    color: AppColor.black, // Change the color to black
                  ),
                  itemBuilder: (context, index) {
                    Task task = taskController.tasks[index];
                    return TaskItem(task: task);
                  },
                );
              }
            }),
          ),

          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                // Expand splits the UI into two parts
                Expanded(
                  // Custom Add Task Widget attached
                  child: CustomButton(
                    onPressed: () {
                      Get.toNamed('/addTask');
                    },
                    text: 'Create new task',
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
