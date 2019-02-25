import 'package:flutter/material.dart';

class TaskControl extends StatelessWidget {
  final Function addTask;
  TaskControl(this.addTask);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.red,
      onPressed: () {
        addTask('new task');
      },
      clipBehavior: Clip.none,
      // child: Text('Create Task'),
    );
  }
}