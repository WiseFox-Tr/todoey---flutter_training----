import 'package:flutter/material.dart';
import 'package:todoey_app/ui/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.lightBlueAccent)),
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.lightBlueAccent)),
        ),
      ),
      home: TasksScreen(),
    );
  }
}


