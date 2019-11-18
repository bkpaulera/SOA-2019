import 'package:flutter/material.dart';


class CardStudy extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 4 , vertical: 4),
      child: Card(
        color: Colors.white70,
        child: ExpansionTile(
          title: Text("Exatas",style: TextStyle(color: Colors.blueAccent),),
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 16.0, right: 16.0,top: 0.0,bottom: 8.0),
            child: Column(
                //mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min, 
                    children: <Widget>[
                      ListTile(
                        title: Text("Exatas"),
                        subtitle: Text("Duvida em Flutter",),
                        trailing:  Icon(Icons.add_alert,),
                        contentPadding: EdgeInsets.zero,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        color: Colors.yellow,
                        onPressed: (){},
                        textColor: Colors.black,
                        child: Text("Buzz"),
                      ),
                      FlatButton(
                        color: Colors.greenAccent,
                        onPressed: (){},
                        textColor: Colors.black,
                        child: Text("Adicionar"),
                      ),
                      FlatButton(
                        color: Colors.redAccent,
                        onPressed: (){},
                        textColor: Colors.black,
                        child: Text("Adicionar"),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}