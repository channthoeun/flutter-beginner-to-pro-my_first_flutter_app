import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/my_scaffold.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app',
      home: MyScaffold(),
    );
  }
}