import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  final List<String> tasks;
  Tasks(this.tasks);

  Widget _buildTaskItem (BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Text(tasks[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget> [
              FlatButton (
                child: Text('Edit task'),
                onPressed: () => Navigator,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTaskList() {
    Widget taskCard;
    if (tasks.length > 0 ) {
      taskCard = ListView.builder(
        itemBuilder: _buildTaskItem,
        itemCount: tasks.length,
      );
    }
    else {
      taskCard = Center(
        child: Text('No tasks for you yet!')
      );
    }
    return taskCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildTaskList();
  }
}