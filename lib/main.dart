import 'package:flutter/material.dart';

import './pages/tasks.dart';

void main() => runApp(MyApp());
//debugPaintSizeEnabled = true; spacing of elements
//debugPaintBaselinesEnabled = true; text 
//debugPaintPointersEnabled = true; click actions

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowMaterialGrid: true,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.orange
      ),
      home: TasksPage(), 
    );
  }
}
