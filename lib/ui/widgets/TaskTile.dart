import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final String taskName;
  final bool isChecked;
  final Function checkboxCallback;

  TaskTile({@required this.taskName, @required this.isChecked, @required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
