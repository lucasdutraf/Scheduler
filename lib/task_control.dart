import 'package:flutter/material.dart';

class TaskControl extends StatelessWidget {
  final Function addTask;
  TaskControl(this.addTask);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.lightGreen,
      onPressed: () {
        addTask('new task');
      },
      child: Text('Create Task'),
    );
  }
}