import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/my_container.dart';
import 'package:my_first_flutter_app/my_stateless_scaffold.dart';

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MyStatelessScaffoldWidget(),
    );
  }
}