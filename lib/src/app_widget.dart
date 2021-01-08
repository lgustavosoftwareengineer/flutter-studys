import 'package:flutter/material.dart';
import 'package:hello_world/src/app_controller.dart';
import 'package:hello_world/src/login_page.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// O AnimatedBuilder tem a função de reconstruir o elemento filho dele
    /// cada vez que houver alguma alteração do listener (Que é o próprio AnimatedBuilder) listener.
    return AnimatedBuilder(
    animation: AppController.instance, 
    builder: (context, child) {
      return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light ,
        ),
        home: LoginPage());
    });
  }
}