import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_app/model/Task.dart';

class TaskProvider extends ChangeNotifier {

  List<Task> _tasks = [
    Task(name: 'buy bread'),
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
  ];

  String _taskInput;

  void updateTaskInput(String newString) {
    _taskInput = newString;
    notifyListeners();
  }

  ///add a task with given name
  void addATask() {
    _tasks.add(Task(name: _taskInput.trim()));
    notifyListeners();
  }

  ///delete a task only if it was done
  void deleteATask(Task task) {
    if(task.isDone) {
      _tasks.remove(task);
      notifyListeners();
    }
  }

  ///change task status
  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);
  int get tasksNumber => _tasks.length;
}
