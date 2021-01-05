import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() {
  runApp(AppWidget(
    title: 'Hello Worlds'
  ));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch:  Colors.red,
      ),
      home: Container(
        child: Center(child: Text(title)),
      ),
    );
  }
}
