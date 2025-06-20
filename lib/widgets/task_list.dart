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
            final task = taskData.tasks[index];
            return TaskTile(
              isChecked: task.isDone,
              taskTileName: task.name,
              checkboxCallback: (value) {
                taskData.updateTask(task);
              },
              listTileCallback: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Task deleted"),
                    backgroundColor: Colors.grey,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                taskData.removeTask(task);
              },
            );
          },
        );
      },
    );
  }
}
