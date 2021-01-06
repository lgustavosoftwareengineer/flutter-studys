import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int randomValue = 0;

  final List<dynamic> emojis = [
    '🥺',
    '👏',
    '🤩',
    '🐷',
    '😍',
    '😕',
    '🙏',
    '🗣️',
    '❤️',
    '🚨',
    '🤓'
  ];

  @override
  Widget build(BuildContext context) {
    
    
    generateARandomValue() {
      int min = 0;
      int max = 11;
      Random rnd = new Random();
      int r = min + rnd.nextInt(max - min);
      return r;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: GestureDetector(
          child: Text('${emojis[randomValue]}',
              style: TextStyle(fontSize: 100)),
          onTap: () {
            setState(() {
              randomValue = generateARandomValue();
            });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            randomValue = generateARandomValue();
          });
        },
      ),
    );
  }
}
