import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTileName;
  final ValueChanged checkboxCallback;
  final GestureLongPressCallback listTileCallback;
  TaskTile({required this.isChecked, required this.taskTileName, required this.checkboxCallback, required this.listTileCallback});

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
          onChanged: checkboxCallback,
      ),

      onLongPress: listTileCallback
    );
  }
}





