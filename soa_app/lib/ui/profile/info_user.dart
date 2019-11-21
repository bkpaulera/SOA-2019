
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Info_User extends StatefulWidget {
  @override
  _Info_UserState createState() => _Info_UserState();
}

class _Info_UserState extends State<Info_User> {
  TextEditingController weightController  = TextEditingController();
  TextEditingController heightController  = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _infoText = "Informação dos dados";
  
  String _nameText = "Unip Swift";
  String _userText = "unip777";
  String _courseText = "Ciencia da Computação";
  String _mailText = "unip@unip.com";
  //String _passwordText = "Paulo Vinicius da Silva";
  
/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informação do Usuario"),
        backgroundColor: Colors.lightBlueAccent,),
        body: Center(
          child: RaisedButton(onPressed: () {
            Navigator.pop(context);
          },
            child: Text('Voltar'), 
          ),
        ),
    );
  } */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text("Perfil" , style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child:
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(Icons.person_outline, size: 150.0,
                color: Colors.amberAccent,),
                Card(
                    color: Colors.white70,
                    child: ExpansionTile(
                      title: Text("Perfil",style: TextStyle(color: Colors.black),),
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
                                    title: Text("Nome"),
                                    subtitle: Text(_nameText,),
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                  ListTile(
                                    title: Text(" Username"),
                                    subtitle: Text(_userText,),
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                  ListTile(
                                    title: Text(" Curso"),
                                    subtitle: Text(_courseText,),
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                  ListTile(
                                    title: Text("E-mail"),
                                    subtitle: Text(_mailText,),
                                    contentPadding: EdgeInsets.zero,
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  FlatButton(
                                    color: Colors.amberAccent,
                                    onPressed: (){

                                    },
                                    textColor: Colors.black,
                                    child: Text("Editar"),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                Card(
                    color: Colors.white70,
                    child: ExpansionTile(
                      title: Text("Skills",style: TextStyle(color: Colors.black),),
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
                                    title: Text("Matematica"),
                                    subtitle: Text("Geometria Analitica",),
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                  ListTile(
                                    title: Text("Linguagens de Progamação"),
                                    subtitle: Text("Fluter",),
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  FlatButton(
                                    color: Colors.amberAccent,
                                    onPressed: (){
                                    },
                                    textColor: Colors.black,
                                    child: Text("Editar"),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                /*
                Text(" Nome : "+_nameText,
                  style: TextStyle(color: Colors.yellowAccent, fontSize: 20.0 )
                ),
                Text(" Username : "+_userText,
                  style: TextStyle(color: Colors.yellowAccent, fontSize: 20.0)
                ),
                Text(" Curso : "+_courseText,
                  style: TextStyle(color: Colors.yellowAccent, fontSize: 20.0)
                ),
                Text(" e-mail : "+_mailText,
                  style: TextStyle(color: Colors.yellowAccent, fontSize: 20.0)
                ),
                */
              Padding(
                padding: EdgeInsets.only(top:10.0,bottom: 10),
                child: Container(
                height: 50.0
                /*
                child: RaisedButton(
                  color: Colors.yellowAccent,
                  onPressed: (){
                    
                  },
                    child: Text("Editar", 
                    style: TextStyle(color: Colors.white, fontSize: 20.0)
                    ),
                ),*/
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
