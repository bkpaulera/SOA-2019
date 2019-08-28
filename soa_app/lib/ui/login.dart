
import 'package:flutter/material.dart';
import 'package:soa_app/routes/routes_path.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.deepPurpleAccent,),
        body:Center(
          child: Center(
            child: Column(
            children: <Widget>[
              RaisedButton(onPressed: () {Navigator.of(context).pushNamed(HomeView);},child: Text('Login'),),
              RaisedButton(onPressed: () {Navigator.of(context).pushNamed(LoginPasswordView);},child: Text('Esqueceu s Senha'),),
              RaisedButton(onPressed: () {Navigator.of(context).pushNamed(LoginRegisterView);},child: Text('Cadastrar'),)
            ],
          ),
          )
        )
    );
  }
}