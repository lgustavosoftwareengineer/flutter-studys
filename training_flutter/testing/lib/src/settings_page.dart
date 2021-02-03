import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  final int selectedPage;
  const SettingsPage({Key key, this.selectedPage}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>
    with SingleTickerProviderStateMixin {

  TabController _tabController;

  final List<Tab> _tabs = <Tab>[
    Tab(icon: Icon(Icons.announcement)),
    Tab(icon: Icon(Icons.cake)),
    Tab(icon: Icon(Icons.cloud)),
  ];

  final List<Tab> _views = <Tab>[
    Tab(text: "Announcement", icon: Icon(Icons.announcement)),
    Tab(text: "Cake", icon: Icon(Icons.cake)),
    Tab(text: "Cloud", icon: Icon(Icons.cloud)),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: _tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: _tabs,
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
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(Icons.person),
                ),
                Text('Página inicial'),
              ]),
              minWidth: double.infinity,
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
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _views.map((Tab tab) {
          return new Center(child: new Text(tab.text));
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          var index = _tabController.index;
          return _tabController.animateTo((index + 1 == _views.length ? 0 : index + 1));
        },
        //sshowAlertDialog(context);
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
