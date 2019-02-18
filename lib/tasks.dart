import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  final List<String> tasks;
  Tasks(this.tasks);

  Widget _buildTaskItem (BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Text(tasks[index])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildTaskItem,
      itemCount: tasks.length,
    );
  }
}