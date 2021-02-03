import 'package:flutter/material.dart';
import 'package:testing/src/widgets/my_text_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentPage = 0;

  var _pages = [
    Text("Page 1 - Announcements"),
    Text("Page 2 - Birthdays"),
    Text("Page 3 - Data"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página inicial'),
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
                Navigator.pushNamed(context, '/user');
              },
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(Icons.person),
                ),
                Text('Página do usuário'),
              ]),
              minWidth: double.infinity,
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(Icons.settings),
                ),
                Text('Configurações'),
              ]),
              minWidth: double.infinity,
            )
          ],
        ),
      ),
      body: Center(child: _pages.elementAt(_currentPage)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.announcement), label: 'Announcements'),
          BottomNavigationBarItem(icon: Icon(Icons.cake), label: 'Birthdays'),
          BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Data'),
        ],
        currentIndex: _currentPage,
        fixedColor: Colors.red,
        onTap: (int inIndex) {
          setState(() {
            _currentPage = inIndex;
          });
        },
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
