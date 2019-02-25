import 'package:flutter/material.dart';

import './tasks.dart';
import './task_create.dart';
import './task_list.dart';

class TasksAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                title: Text('All Tasks'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => TasksPage()));
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Manage Products'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: 'Create Task',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'My Tasks',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[TaskCreatePage(), TaskListPage()],
        ),
      ),
    );
  }
}
