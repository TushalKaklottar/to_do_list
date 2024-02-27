import 'package:get/get.dart';
import 'package:to_do_list/model/task_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

// state management Get-x Controller
class TaskController extends GetxController {


  // taskList with taskModel add another file
  RxList<Task> tasks = <Task>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadTasks();
  }

  // add task function take a String parameter
  void addTask(String taskName) {
    tasks.add(Task(taskName));
    saveTasks();
  }

  // join task function
  void toggleTask(Task task) {
    task.complete = !task.complete;
    saveTasks();
  }

  // delete task
  void removeTask(Task task) {
    tasks.remove(task);
    saveTasks();
  }

  // SharedPreferences to store task
  Future<void> saveTasks() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setStringList('tasks', tasks.map((task) => task.name).toList());
  }

  Future<void> loadTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? taskNames = prefs.getStringList('tasks');
    if(taskNames != null) {
      tasks.value = taskNames.map((name) => Task(name)).toList();
    }
  }

}