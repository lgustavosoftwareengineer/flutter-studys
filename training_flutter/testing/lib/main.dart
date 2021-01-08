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
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 110,
              width: double.infinity,
              color: Colors.red,
              child: DrawerHeader(
                child: Text('Header', style: TextStyle(color: Colors.white),)
              ),
            ),
            Text('Item 1'),
            Text('Item 2'),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 200),
          // color:  Colors.black12,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), 
              bottomRight: Radius.circular(10)
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              MyText(data: 'Child 1'),
              Divider(thickness: 2,),
              MyText(data: 'Child 2'),
              Divider(thickness: 2,),
              MyText(data: 'Child 3'),
              Divider(thickness: 2,),
            ],
          ),
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

class MyText extends StatelessWidget {
  final String data;
  final Color color;
  final Color bg;

  const MyText({Key key, this.data, this.color, this.bg}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Text(data, style: TextStyle(fontSize: 25, color: color, backgroundColor: bg),);
  }
}
