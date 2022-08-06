import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/my_stateless_scaffold.dart';
import 'package:my_first_flutter_app/questions.dart';
import 'package:my_first_flutter_app/snackbar.dart';

void clickNextPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Know Yourself...'),
            ),
            body: const Center(
              child: Text(
                'Dig deep into every layer of your mind to find yourself...',
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
    )
  );
}

void clickNextQuestion(BuildContext context) {
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (BuildContext context) {
            
            final questions = [
              Questions(questions: 'Are you impulsive?'),
              Questions(questions: 'Do you get angry easily?'),
              Questions(questions: 'Are you sloth?'),
              Questions(questions: 'Do you cheat others?'),
            ];

            return Scaffold(
              key: scaffoldKey,
              appBar: AppBar(
                title: const Text('Know Yourself...'),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${questions[1].questions}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    width: 350,
                    child: Card(
                      elevation: 20,
                      color: Colors.red,
                      child: RaisedButton(
                        child: Text(
                          'No, Not at all...',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black
                          ),
                        ),
                        disabledColor: Colors.black,
                        onPressed: () {
                          scaffoldKey.currentState?.showSnackBar(snackBarFour);
                        },
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
                            color: Colors.black,
                          ),
                        ),
                        disabledColor: Colors.redAccent,
                        onPressed: () {
                          scaffoldKey.currentState?.showSnackBar(snackBarFive);
                        },
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
                          'I cannot control it.',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                        disabledColor: Colors.redAccent,
                        onPressed: () {
                          scaffoldKey.currentState?.showSnackBar((snackBarSix));
                        },
                      ),
                    ),
                  ),
                  RaisedButton(
                    child: Text(
                      'Next Question',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.blueGrey,
                      ),
                    ),
                    onPressed: () {
                      clickNextQuestion(context);
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.navigate_next),
                    tooltip: 'Next Question',
                    onPressed: () {
                      clickNextQuestion(context);
                    },
                  ),
                ],
              ),
            );
          },
      )
  );
}