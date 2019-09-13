import 'package:flutter/material.dart';

//import 'package:observable_ish/observable_ish.dart';

//final rxStrings = RxValue<String>();

bool _userEdited =false;
String _choiceDrop = null;

final _tagControler = TextEditingController();

class CreateCard extends StatefulWidget {
  @override
  _CreateCardState createState() => _CreateCardState();
}

class _CreateCardState extends State<CreateCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    //child: Text(rxStrings.value.toString(),style: TextStyle(fontSize: 25.0),),
                    child: Text('Alguma coisa deveria aparecer aqui"'),
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
                          //rxStrings.value=value; 
                        });
                      },
                  ),
                ],
          );
  }
}