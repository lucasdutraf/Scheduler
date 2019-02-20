import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Task detail'),
      ),
      body: Column(
        children: <Widget>[
          Text('Edit Task'),
          RaisedButton(
            child: Text('Back'),
            onPressed: () => Navigator.pop(context),
          )
        ]
      ),
    );
  }
}