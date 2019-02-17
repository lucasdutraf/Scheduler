import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  final List<String> tasks;
  Tasks(this.tasks);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: tasks
      .map((element) => Card(
        child: Column(
          children: <Widget>[
            Text(element)
          ],
        ),
      ))
      .toList(),
    );
  }
}