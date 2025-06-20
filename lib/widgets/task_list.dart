import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:todoe/widgets/task_tile.dart";

import "../models/tasks_data.dart";

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (BuildContext context, int index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTileName: taskData.tasks[index].name,
              checkboxCallback: (value) {
                // setState(() {
                //   widget.tasks[index].toggleDone();
                // });
              },
            );
          },
        );
      },
    );
  }
}
