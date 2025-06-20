import 'package:flutter/material.dart';
import '../models/task.dart';
import 'package:provider/provider.dart';

import '../models/tasks_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late String newTaskName;
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
                newTaskName = value;
              },
            onSubmitted: (_){
              Provider.of<TaskData>(context, listen: false).addTask(newTaskName);
              Navigator.pop(context);
            },
          ),

          SizedBox(height: 10,),

          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(newTaskName);
              Navigator.pop(context);
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
