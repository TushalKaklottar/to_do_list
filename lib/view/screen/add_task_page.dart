import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/controller/task_controller.dart';
import 'package:to_do_list/utils/color.dart';
import 'package:to_do_list/utils/textTheme.dart';
import 'package:to_do_list/view/component/custom_button.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.amber,
        title: Text(
          "Add task",
          style: tTextStyleBoldBlack(20),),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: textEditingController,
              decoration: const InputDecoration(
                labelText: "Task Name",
              ),
            ),
            const SizedBox(height: 20,),
            CustomButton(
                onPressed: () {
                  String taskName = textEditingController.text.trim();
                  if(taskName.isNotEmpty) {
                    Get.find<TaskController>().addTask(taskName);
                    Get.back();
                  }
                },
                text: "Add task",
            ),
          ],
        ),
      ),
    );
  }
}
