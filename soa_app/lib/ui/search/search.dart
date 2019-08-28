
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Busca"),
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