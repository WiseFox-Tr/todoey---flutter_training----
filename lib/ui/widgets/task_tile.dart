import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

  String taskName = 'A task';
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none
        ),
      ),
      trailing: TaskCheckbox(
        isChecked: isChecked,
        checkboxCallback: (newStatus) {
          setState(() => isChecked = newStatus);
        }
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool isChecked;
  final Function checkboxCallback;

  TaskCheckbox({@required this.isChecked, @required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: checkboxCallback,
    );
  }
}
