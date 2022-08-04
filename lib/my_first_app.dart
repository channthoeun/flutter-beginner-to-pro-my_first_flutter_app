import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/my_stateless_scaffold.dart';

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MyStatelessScaffoldWidget(),
    );
  }
}