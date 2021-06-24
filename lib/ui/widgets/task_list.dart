import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/model/Task.dart';
import 'package:todoey_app/provider/TaskProvider.dart';
import 'package:todoey_app/ui/widgets/TaskTile.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, taskProvider, child) {
        return ListView.builder(
          itemCount: taskProvider.tasksNumber,
          itemBuilder: (context, index) {
            final Task currentTask = taskProvider.tasks[index];
            return TaskTile(
              taskName: currentTask.name,
              isChecked: currentTask.isDone,
              checkboxCallback: (newState) => taskProvider.updateTask(currentTask),
            );
          },
        );
      },
    );
  }
}
