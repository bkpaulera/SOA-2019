
import 'package:flutter/material.dart';

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
        backgroundColor: Colors.lightBlueAccent[100],
        title: Text("Perfil"),
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
                color: Colors.lightBlueAccent[100],),
                Text(" Nome : "+_nameText,
                  style: TextStyle(color: Colors.lightBlue, fontSize: 20.0 )
                ),
                Text(" Username : "+_userText,
                  style: TextStyle(color: Colors.lightBlue, fontSize: 20.0)
                ),
                Text(" Curso : "+_courseText,
                  style: TextStyle(color: Colors.lightBlue, fontSize: 20.0)
                ),
                Text(" e-mail : "+_mailText,
                  style: TextStyle(color: Colors.lightBlue, fontSize: 20.0)
                ),
              Padding(
                padding: EdgeInsets.only(top:10.0,bottom: 10),
                child: Container(
                height: 50.0,
                child: RaisedButton(
                  color: Colors.lightBlueAccent[100],
                  onPressed: (){
                    
                  },
                    child: Text("Editar", 
                    style: TextStyle(color: Colors.white, fontSize: 20.0)
                    ),
                ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
