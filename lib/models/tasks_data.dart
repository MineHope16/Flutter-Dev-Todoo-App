import 'package:flutter/foundation.dart';
import 'package:todoe/models/task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Buy milk"),
    Task(name: "Walk the dog"),
    Task(name: "Do Flutter assignment"),
    Task(name: "Call mom"),
    Task(name: "Read a book"),
    Task(name: "Exercise"),
    Task(name: "Reply to emails"),
    Task(name: "Pay bills"),
  ];


  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String taskName){
    final task = Task(name: taskName);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(task){
   task.toggleDone();
   if(task.isDone){
     _tasks.remove(task);
     _tasks.add(task);
   }else{
     _tasks.remove(task);
     _tasks.insert(0, task);
   }
   notifyListeners();
  }

  void removeTask(task){
    _tasks.remove(task);
    notifyListeners();
  }
}