import 'package:flutter/material.dart';

import 'widgets/my_text_widget.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página do usuário'),
         leading: Builder(
          builder: (context) => 
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
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
                  child: Text(
                'Header',
                style: TextStyle(color: Colors.white),
              )),
            ),
           FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(Icons.person),
                  ),
                  Text('Página inicial'),
                ]   
                ),
              minWidth: double.infinity,
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(Icons.settings),
                  ),
                  Text('Configurações'),
                ]   
                ),
              minWidth: double.infinity,
            )
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
                  bottomRight: Radius.circular(10))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              MyText(data: 'Child 1'),
              Divider(
                thickness: 2,
              ),
              MyText(data: 'Child 2'),
              Divider(
                thickness: 2,
              ),
              MyText(data: 'Child 3'),
              Divider(
                thickness: 2,
              ),
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
