import 'package:flutter/material.dart';

import './tasks.dart';

class TaskManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TaskManagerState();
  }
}

class _TaskManagerState extends State<TaskManager> {
  List<String> _tasks = ['Surgery'];

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
