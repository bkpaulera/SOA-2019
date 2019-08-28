
import 'package:flutter/material.dart';

class Info_User extends StatefulWidget {
  @override
  _Info_UserState createState() => _Info_UserState();
}

class _Info_UserState extends State<Info_User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informação do Usuario"),
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