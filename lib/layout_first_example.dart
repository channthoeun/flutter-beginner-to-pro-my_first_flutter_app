import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/next_page.dart';
import 'package:my_first_flutter_app/questions.dart';
import 'package:my_first_flutter_app/snackbar.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class MyStatelessLayoutWidget extends StatelessWidget {
  final questions = [
    Questions(questions: 'Are you impulsive?'),
    Questions(questions: 'Do you get angry easily?'),
    Questions(questions: 'Are you sloth?'),
    Questions(questions: 'Do you cheat others?'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              scaffoldKey.currentState?.showSnackBar(snackBarOne);
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {
              scaffoldKey.currentState?.showSnackBar(snackBarTwo);
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Next page',
            onPressed: () {
              clickNextQuestion(context);
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: () {
            scaffoldKey.currentState?.showSnackBar(snackBarThree);
          },
        ),
        title: Text(
          'Knowledge Test',
          style: TextStyle(
            fontSize: 25.00,
            fontStyle: FontStyle.normal,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            '${questions[0].questions}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            padding: EdgeInsets.all(10),
            width: 350,
            child: Card(
              elevation: 20,
              color: Colors.red,
              child: RaisedButton(
                child: Text(
                  'No. Not at all...',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                disabledColor: Colors.redAccent,
                onPressed: null,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            padding: EdgeInsets.all(10),
            width: 350,
            child: Card(
              elevation: 20,
              color: Colors.red,
              child: RaisedButton(
                child: Text(
                  'I try to control it...',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                disabledColor: Colors.redAccent,
                onPressed: null,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            padding: EdgeInsets.all(10),
            width: 350,
            child: Card(
              elevation: 20,
              color: Colors.red,
              child: RaisedButton(
                child: Text(
                  'I am very impulsive.',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                disabledColor: Colors.redAccent,
                onPressed: null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}