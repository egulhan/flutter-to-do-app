import 'package:flutter/material.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskName: taskData.tasks[index].name,
              isDone: taskData.tasks[index].isDone,
              checkboxStateCallback: (newState) {
                taskData.updateState(newState, index);
              },
              checkBoxLongPressCallback: () {
                taskData.deleteTask(index);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
