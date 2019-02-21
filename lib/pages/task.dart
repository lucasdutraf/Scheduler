import 'package:flutter/material.dart';
import 'dart:async';

class TaskPage extends StatelessWidget {
  
  final String title;

  TaskPage(this.title);
  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center (
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0), 
                child: Text(title)
              ),
              Container (
                padding: EdgeInsets.all(10.0),
                child: RaisedButton (
                  color: Theme.of(context).accentColor,
                  child: Text('delete'),
                  onPressed: () => Navigator.pop(context, true),
                ),
              )            
            ]
          ),
        )
      ),
    );
  }
}