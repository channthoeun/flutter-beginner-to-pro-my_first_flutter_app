import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/my_appbar.dart';

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(

      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'Test Your Knowledge...',
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                 'Here we will place our body widget...',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}