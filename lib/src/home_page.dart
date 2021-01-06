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
      body: Center(
        child: CustomSwitch(
        value: isTrue,
        onChanged: (value) {
          setState(() {
            isTrue = value;
          });
        },
      )),
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
