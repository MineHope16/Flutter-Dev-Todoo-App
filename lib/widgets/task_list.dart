import "package:flutter/material.dart";
import "package:todoe/widgets/task_tile.dart";
import "../models/task.dart";

class TaskList extends StatefulWidget {

  late final List<Task> tasks;

  TaskList({required this.tasks});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          taskTileName: widget.tasks[index].name,
          checkboxCallback: (value) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
    );
  }
}
