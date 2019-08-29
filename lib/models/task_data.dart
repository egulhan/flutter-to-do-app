import 'package:flutter/foundation.dart';
import 'package:todo_app/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Study Flutter', isDone: false),
  ];

  // UnmodifiableListView makes tasks can not get reached from outside
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskLength {
    return _tasks.length;
  }

  void addTask(String taskName) {
    Task task = Task(name: taskName, isDone: false);
    _tasks.add(task);
    notifyListeners();
  }

  void updateState(bool newState, int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
