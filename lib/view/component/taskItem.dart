import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:to_do_list/controller/task_controller.dart';
import 'package:to_do_list/model/task_model.dart';
import 'package:to_do_list/utils/color.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  const TaskItem({Key? key,required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(task.name),
          Text(
            'Created: ${DateFormat('yyyy-MM-dd HH:mm').format(task.timestamp)}',
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
      leading: Checkbox(
        value: task.complete,
        onChanged: (value) {
          Get.find<TaskController>().toggleTask(task);
        },
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          Get.find<TaskController>().removeTask(task);
        },
      ),
    );
  }
}

