
import 'package:flutter/material.dart';

class Login_Password extends StatefulWidget {
  @override
  _Login_PasswordState createState() => _Login_PasswordState();
}

class _Login_PasswordState extends State<Login_Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Esqueceu a Senha"),
        backgroundColor: Colors.deepPurpleAccent,),
        body: Center(
          child: RaisedButton(onPressed: () {
            Navigator.pop(context);
          },
            child: Text('Voltar'), 
          ),
        ),
    );
  }
}