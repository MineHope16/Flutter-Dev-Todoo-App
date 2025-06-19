import 'package:flutter/material.dart';
import 'package:todoe/widgets/task_list.dart';

import '../models/task.dart';
import 'add_task_screen.dart';

class TaskScreen extends StatefulWidget {

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks = [
    Task(name: "Learn State Management"),
    Task(name: "Learn 100 secs of REST Api"),
    Task(name: "Sleep before 10pm"),
  ];

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(
                        tasks: tasks,
                        addTaskCallback: (value) {
                          setState(() {
                            tasks.add(Task(name: value));
                          });                        }
                      ),
                  ),
              ),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        shape: CircleBorder(),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, bottom: 30, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(Icons.list, size: 30, color: Colors.lightBlueAccent),
                ),
                SizedBox(height: 10),
                Text(
                  "Todoo",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "${tasks.length} Tasks",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),

              child: TaskList(
                tasks: tasks,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
