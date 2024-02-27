class Task {
  String name;
  bool complete;
  DateTime timestamp;
  Task(this.name, {this.complete = false}) : timestamp = DateTime.now();
}