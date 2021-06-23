import 'package:flutter/material.dart';
import 'package:todoey_app/model/Task.dart';
import 'package:todoey_app/ui/widgets/task_tile.dart';

class TaskList extends StatefulWidget {

  final List<Task> tasks;

  TaskList({@required this.tasks});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
      return TaskTile(
        taskName: widget.tasks[index].name,
        isChecked: widget.tasks[index].isDone,
        checkboxCallback: (newState) {
          setState(() {
            widget.tasks[index].toggleDone();
          });
        },
      );
    });
  }
}
