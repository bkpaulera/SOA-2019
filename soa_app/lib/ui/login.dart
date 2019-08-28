
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
        body: Center(
          child: RaisedButton(onPressed: () {
            //Navigator.of(context).pushNamed(HomeMainView);
            Navigator.pop(context);
          },
            child: Text('Go to Home'), 
          ),
        ),
    );
  }
}