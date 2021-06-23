import 'package:flutter/material.dart';
import 'package:todoey_app/model/Task.dart';
import 'package:todoey_app/ui/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  List<Task> tasks = [
    Task(name: 'buy bread'),
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
      return TaskTile(
        taskName: tasks[index].name,
        isChecked: tasks[index].isDone,
        checkboxCallback: (checkboxState) => setState(() => tasks[index].toggleDone()),
      );
    });
  }
}
