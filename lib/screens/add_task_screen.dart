import 'package:flutter/material.dart';

import '../models/task.dart';

class AddTaskScreen extends StatelessWidget {
  late final List<Task> tasks;
  late final Function addTaskCallback;
  AddTaskScreen({required this.tasks, required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    late String name;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlueAccent,
            ),
          ),

          TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                name = value;
              },
          ),

          SizedBox(height: 10,),

          TextButton(
            onPressed: () {
              addTaskCallback(name);
            },
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.lightBlueAccent),
              foregroundColor: WidgetStatePropertyAll(Colors.white),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              textStyle: WidgetStatePropertyAll(TextStyle(fontSize: 18)),
            ),
            child: Text("Add"),
          ),
        ],
      ),
    );
  }
}
