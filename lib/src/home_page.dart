import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    /*
    Eu posso utilizar o Scaffold ou o Material.
    A diferença é que com o Scaffold eu obtenho uma estrutura de aplicativo basicamente completa.
    No entando o Material é bastante útil para quando eu pretendo trabalhar com tema.
    */
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: GestureDetector(
          child: Text('Contador $count', style: TextStyle(fontSize: 20)),
          onTap: () {
            setState(() {
              count++;
            });
          },
        ),
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
