import 'package:flutter/material.dart';

import '../task_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scheduler'),
      ),
      body: TaskManager(),
    );
  }
}