import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBarOne = const SnackBar(
    content: Text(
      'Alert has been press',
      style: TextStyle(fontSize: 30),
    )
);
final SnackBar snackBarTwo = const SnackBar(
    content: Text(
      'Search has been pressed',
      style: TextStyle(fontSize: 30),
    )
);
final SnackBar snackBarThree = const SnackBar(
    content: Text(
      'Navigation has been pressed!',
      style: TextStyle(fontSize: 30),
    )
);

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
      }
    )
  );
}

class MyStatelessScaffoldWidget extends StatelessWidget {
  MyStatelessScaffoldWidget({Key? key}) : super(key: key);

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
          'Knowledge Test',
          style: TextStyle(
            fontSize: 25.00,
            fontStyle: FontStyle.normal,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: const [
          Text(
            'Answer a few questions and know your level...',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          RaisedButton(
            disabledColor: Colors.redAccent,
            onPressed: null,
            child: Text(
              'You have chosen answer 1',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blueGrey,
              ),
            ),
          ),
          RaisedButton(
            disabledColor: Colors.redAccent,
            onPressed: null,
            child: Text(
              'You have chosen answer 2',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blueGrey,
              ),
            ),
          ),
          RaisedButton(
            disabledColor: Colors.redAccent,
            onPressed: null,
            child: Text(
              'You have chosen answer 3',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blueGrey,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add',
        backgroundColor: Colors.redAccent,
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}