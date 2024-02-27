import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/controller/task_controller.dart';
import 'package:to_do_list/model/task_model.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  const TaskItem({Key? key,required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.name),
      leading: Checkbox(
          value: task.complete,
          onChanged: (value) {
            Get.find<TaskController>().toggleTask(task);
          }
      ),
      trailing: IconButton(
          onPressed: () {
            Get.find<TaskController>().removeTask(task);
          },
          icon: const Icon(Icons.delete)
      ),
    );
  }
}
