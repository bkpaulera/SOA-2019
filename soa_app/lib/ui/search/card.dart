import 'package:flutter/material.dart';

class CardStudy extends StatefulWidget {
  @override
  _CardStudyState createState() => _CardStudyState();
}


class _CardStudyState extends State<CardStudy> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
      color: Colors.deepPurpleAccent[100],
        child: Padding(padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              FlutterLogo(colors: Colors.purple,size: 30.0,),
              Divider(),
              Text('Cartão de Aleta',
                style: TextStyle(fontSize: 22.0, color: Colors.white),)
            ],
          ),
          )  
        ),
      );
  }
}

class CardAlert{
    
    
}