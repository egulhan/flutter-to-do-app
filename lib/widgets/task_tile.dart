import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isDone;
  final Function checkboxStateCallback;
  final Function checkBoxLongPressCallback;

  TaskTile(
      {this.taskName,
      this.isDone,
      this.checkboxStateCallback,
      this.checkBoxLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: checkBoxLongPressCallback,
      title: Text(
        taskName,
        style:
            TextStyle(decoration: isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isDone,
        onChanged: (newState) {
          checkboxStateCallback(newState);
        },
      ),
    );
  }
}
