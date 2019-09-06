
import 'package:flutter/material.dart';
import 'package:soa_app/ui/search/card.dart';
import 'package:observable_ish/observable_ish.dart';

final rxStrings = RxValue<String>();
List <CardAlert> CardsAlerts  = new List(10);

bool _userEdited =false;
String _choiceDrop = null;

final _tagControler = TextEditingController();

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
          body: SingleChildScrollView(
            padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: "Titulo"),
                    onChanged: (text){
                      _userEdited=true;
                      setState(() {
                        
                      });
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Descrição"),
                    onChanged: (text){
                      _userEdited=true;
                      setState(() {
                        
                      });
                    },
                  ),
                  
                  Padding(
                    
                    padding: const EdgeInsets.all(10.0),
                    child: Text(rxStrings.value.toString(),style: TextStyle(fontSize: 25.0),),
                  ),
                  
                  DropdownButton(
                    
                    items:  <String>['Informatica', 'Flutter', 'Calculo de Area']
                      .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      })
                      .toList(), onChanged: (String value) {
                        _choiceDrop=value;
                        setState(() {
                          rxStrings.value=value; 
                        });
                      },
                  ),
                ],
              ),
          ),
        )
    );
  }
}