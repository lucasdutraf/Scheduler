import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scheduler'),
        ),
        body: Column(
          children: [
            RaisedButton(
              onPressed: () {},
              child: Text('Create Task'),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Text('Food Paradise')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
