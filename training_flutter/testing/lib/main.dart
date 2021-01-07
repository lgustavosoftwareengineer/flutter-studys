import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      title: 'Flutter Playground',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Playground'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'Text 1',
                  style: TextStyle(fontSize: 25),
                ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 100, left: 100),
              child: Text(
                'Text 2',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Transform.scale(
              scale: 2.0,
              child: Text(
                'Text 3',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

closeAlertDialog(BuildContext context) {
  return Navigator.of(context).pop();
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      // Clossing the dialog
      closeAlertDialog(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Hello"),
    content: Text("Hello i'm a Dialog."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
