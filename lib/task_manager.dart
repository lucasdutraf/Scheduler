import 'package:flutter/material.dart';

import './tasks.dart';

class TaskManager extends StatefulWidget {
  final String startingTask;

  TaskManager (this.startingTask);
  @override
  State<StatefulWidget> createState() {
    return _TaskManagerState();
  }
}

class _TaskManagerState extends State<TaskManager> {
  List<String> _tasks = [];

  @override
  void initState() {
    _tasks.add(widget.startingTask);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed: () {
            setState(() {
              _tasks.add('task');
            });
          },
          child: Text('Create Task'),
        ),
      ),
    Tasks(_tasks)
    ]);
  }
}
