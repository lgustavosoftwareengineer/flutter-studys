import 'package:flutter/material.dart';
import 'package:testing/src/home_page.dart';
import 'package:testing/src/settings_page.dart';
import 'package:testing/src/user_page.dart';

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
      routes: <String, WidgetBuilder> {
        "/settings" : (BuildContext bc) => SettingsPage(),
        "/user" : (BuildContext bc) => UserPage(),
      },
    );
  }
}


