import 'package:flutter/material.dart';
import 'package:helloworld/web.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App News',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: BuidlWeb(),
    );
  }
}
