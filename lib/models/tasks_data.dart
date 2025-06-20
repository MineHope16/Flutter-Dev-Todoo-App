import 'package:flutter/foundation.dart';
import 'package:todoe/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Learn State Management"),
    Task(name: "Learn 100 secs of REST Api"),
    Task(name: "Sleep before 10pm"),
    Task(name: "Implement the State Management by Provider Package"),
  ];

  int get taskCount {
    return tasks.length;
  }
}