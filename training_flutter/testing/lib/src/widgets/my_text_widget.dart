import 'package:flutter/material.dart';

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
