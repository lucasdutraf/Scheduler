import 'package:flutter/material.dart';

import './task_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.orange
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scheduler'),
        ),
        body: TaskManager('Task test'),
      ),
    );
  }
}
