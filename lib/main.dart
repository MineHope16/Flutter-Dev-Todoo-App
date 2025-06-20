import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoe/screens/task_screen.dart';

import 'models/tasks_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TaskData(),
    child: MaterialApp(home: TaskScreen()));
  }
}
