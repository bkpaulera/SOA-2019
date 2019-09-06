
import 'package:flutter/material.dart';
import 'package:soa_app/ui/search/card.dart';

List <CardAlert> CardsAlerts  = new List(10);


class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}



class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: 
        Scaffold(
          appBar: AppBar(
            title: Text('Alerta'),
            backgroundColor: Colors.deepPurpleAccent,
            centerTitle: true,
          ),
          backgroundColor: Colors.white,
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.add),
            backgroundColor: Colors.deepPurpleAccent,
          ),
          body: ListView.builder(padding: EdgeInsets.all(10.0),
          itemCount: CardsAlerts.length,
          itemBuilder: (context,index){
            return CardStudy();
          },
        )
    );
  }
}