import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/snackbar_and_page.dart';

class MyNewLayout extends StatelessWidget {
  const MyNewLayout({Key? key}) : super(key: key);

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
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {
              scaffoldKey.currentState?.showSnackBar(snackBarTwo);
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Next page',
            onPressed: () {
              clickNextPage(context);
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: () {
            scaffoldKey.currentState?.showSnackBar(snackBarThree);
          },
        ),
        title: const Text(
          'War Quiz App',
          style: TextStyle(
            fontSize: 25.00,
            fontStyle: FontStyle.normal,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 25.00),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.00),
                    color: Colors.redAccent,
                  ),
                  child: const Icon(Icons.landscape, color: Colors.brown),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 70.00, right: 50.00),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.00),
                    color: Colors.green,
                  ),
                  child: const Icon(Icons.keyboard_arrow_down, color: Colors.black),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50.00, top: 70.00),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.00),
                    color: Colors.blueAccent,
                  ),
                  child: const Icon(Icons.keyboard_arrow_up, color: Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Take a Quick War Quiz!',
                  style: TextStyle(
                    fontSize: 35.00,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  'Answer a few Questions to test your Knowledge, Scores will decide...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                const Text(
                  '...EITHER...',
                  style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                RaisedButton(
                  child: Text(
                    'You are a War Expert!',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  disabledColor: Colors.redAccent,
                  onPressed: null,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                ),
                Text(
                  '...OR ...',
                  style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                RaisedButton(
                  child: Text(
                    'You are a Learned Person!',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  disabledColor: Colors.redAccent,
                  onPressed: null,
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                ),
                Text(
                  '...FINALLY...',
                  style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                RaisedButton(
                  child: Text(
                    'You need to Study More!',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  disabledColor: Colors.redAccent,
                  onPressed: null,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(20.00),
                        child: Container(
                          alignment: Alignment.center,
                          height: 40.00,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(30.00),
                          ),
                          child: RaisedButton(
                            child: Text(
                              'Let\'s Start...',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.blue,
                              ),
                            ),
                            //disabledColor: Colors.redAccent,
                            onPressed: () {
                              clickNextPage(context);
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
