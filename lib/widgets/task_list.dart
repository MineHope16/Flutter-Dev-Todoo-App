import "package:flutter/material.dart";
import "package:todoe/widgets/task_tile.dart";

class TaskList extends StatelessWidget {
  TaskList({super.key});

  late bool isChecked;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
