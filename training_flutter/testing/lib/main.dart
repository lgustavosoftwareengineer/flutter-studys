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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Text 1',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'Text 2',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'Text 3',
              style: TextStyle(fontSize: 25),
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
    title: Text("My title"),
    content: Text("This is my message."),
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
