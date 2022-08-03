import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          title: Text(
             'Test Your Knowledge...',
              style: TextStyle(
                fontSize: 25.00,
                fontStyle: FontStyle.normal
              ),
            ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null
          ),
        ],
          backgroundColor: Colors.redAccent,
        ),
      body: Column(
        children: [
          Text(
            'You need to answer a few question',
            style: TextStyle(
                fontSize: 25,
              ),
          ),
          RaisedButton(
            child: Text(
              'You have chosen answer 1',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blueGrey,
              ),
            ),
            disabledColor: Colors.redAccent,
            onPressed: null,
          ),
          RaisedButton(
            child: Text(
              'You have chosen answer 2',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blueGrey,
              ),
            ),
            disabledColor: Colors.redAccent,
            onPressed: null,
          ),
          RaisedButton(
            child: Text(
              'You have chosen answer 3',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blueGrey,
              ),
            ),
            disabledColor: Colors.redAccent,
            onPressed: null,
          ),
        ],
      ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Add',
          child: Icon(Icons.add),
          onPressed: null,
        ),
      ),
    );
  }
}