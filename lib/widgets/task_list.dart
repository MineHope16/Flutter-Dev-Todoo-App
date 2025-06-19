import "package:flutter/material.dart";
import "package:todoe/widgets/task_tile.dart";

import "../models/task.dart";

class TaskList extends StatefulWidget {
  TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  List<Task> tasks = [
    Task(name: "Learn State Management"),
    Task(name: "Learn 100 secs of REST Api"),
    Task(name: "Sleep before 10pm"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(isChecked: tasks[0].isDone, taskTileName: tasks[0].name),
        TaskTile(isChecked: tasks[1].isDone, taskTileName: tasks[1].name),
        TaskTile(isChecked: tasks[2].isDone, taskTileName: tasks[2].name),
      ],
    );
  }
}
