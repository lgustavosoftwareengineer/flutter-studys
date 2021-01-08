import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    String email = '';
    String password = '';

    bool login() {
      if (email == 'luiz@teste.br' && password == '123')
        return true;
      else
        return false;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (text) => email = text,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Email'),
                ),
                Padding(padding: EdgeInsets.all(6)),
                TextField(
                    onChanged: (text) => password = text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Senha')),
                Padding(padding: EdgeInsets.all(6)),
                SizedBox(
                  width: double.maxFinite,
                  child: RaisedButton(
                      onPressed: () {
                        bool result = login();
                        
                        if (result == true) {
                          print('Login feito com sucesso');
                        } else {
                          print(
                              'Senha e/ou email está(ão) errado(s), tente novamente');
                        }
                      },
                      child: Text('Entrar', textAlign: TextAlign.justify)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
