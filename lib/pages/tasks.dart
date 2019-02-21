import 'package:flutter/material.dart';

import '../task_manager.dart';
import './tasks_admin.dart';

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Tasks'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          TasksAdminPage()
                  )
                );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('All tasks'),
      ),
      body: TaskManager(),
    );
  }
}
