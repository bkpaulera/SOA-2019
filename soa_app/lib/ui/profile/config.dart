
import 'package:flutter/material.dart';

class Config extends StatefulWidget {
  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configuração"),
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