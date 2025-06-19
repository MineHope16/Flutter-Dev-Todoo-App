import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTileName;

  TaskTile({required this.isChecked, required this.taskTileName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
          taskTileName,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (bool? value) {  },
      ),
    );
  }
}

// (value) {
// setState(() {
// isChecked = value;
// });
// }



