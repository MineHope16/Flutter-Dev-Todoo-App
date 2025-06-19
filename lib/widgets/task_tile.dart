import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
          "Task 1",
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value;
          });
        }
      )
    );
  }
}


class TaskCheckbox extends StatelessWidget {
  late final bool  checkboxState;
  late final ValueChanged onChanged;

  TaskCheckbox({required this.checkboxState, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: onChanged
    );
  }
}

