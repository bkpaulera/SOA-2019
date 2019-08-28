
import 'package:flutter/material.dart';

class Talks extends StatefulWidget {
  @override
  _TalksState createState() => _TalksState();
}

class _TalksState extends State<Talks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversas"),
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