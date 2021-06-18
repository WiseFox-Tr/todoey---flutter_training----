import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final String taskName;
  final bool isChecked;

  TaskTile({@required this.taskName, @required this.isChecked});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none
        ),
      ),
      trailing: Checkbox(value: isChecked, onChanged: (newStatus) {} ),
    );
  }
}
