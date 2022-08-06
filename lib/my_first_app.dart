import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/layout_first_example.dart';

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MyStatelessLayoutWidget(),
    );
  }
}