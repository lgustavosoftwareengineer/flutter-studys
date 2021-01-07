import 'package:flutter/material.dart';
import 'package:hello_world/src/app_controller.dart';
import 'package:hello_world/src/widgets/custom_switch.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          CustomSwitch(
            value: AppController.instance.isDarkTheme,
            onChanged: (value) {
              AppController.instance.changeTheme();
            },
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(10),
        child: ListView(
          padding: EdgeInsets.all(20),
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Block(color: Colors.yellow),
            ),
            Block(color: Colors.green),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Block(color: Colors.deepPurple),
            ),
            Block(color: Colors.blue),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Block(color: Colors.red),
            ),
            Block(color: Colors.cyan),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Block(color: Colors.grey),
            ),
            Block(color: Colors.teal),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Block(color: Colors.amber),
            ),
          ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}


class Block extends StatelessWidget {
  final Color color;
  const Block({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}
