import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soa_app/routes/routes_path.dart';

class Info_User extends StatefulWidget {
  final FirebaseUser user;
  

  

  // In the constructor, require a Todo.
  Info_User({Key key, @required this.user}) : super(key: key);

  @override
  _Info_UserState createState() => _Info_UserState();
}



class _Info_UserState extends State<Info_User> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var _infoText = TextEditingController();
  var _nameText = TextEditingController();
  var _userText = TextEditingController();
  var _courseText = TextEditingController();
  var _mailText = TextEditingController();
  var _universityText = TextEditingController();
  var _skillsText = TextEditingController();

    @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    _infoText.dispose();
    _nameText.dispose();
    _userText.dispose();
    _courseText.dispose();
    _mailText.dispose();
    _universityText.dispose();
    _skillsText.dispose();
    super.dispose();

  
  }

  
  @override
  void initState() {
    getUserInformation(widget.user)
        .then((result) => {
              if (result.data != null)
                {
                  result.data.forEach((key, value) {
                    switch (key) {
                      case 'curso':
                        _courseText.text = value;
                        break;
                      case 'email':
                        _mailText.text = value;
                        break;
                      case 'faculdade':
                        _universityText.text = value;
                        break;
                      case 'nome':
                        _nameText.text = value;
                        break;
                      case 'nomeUser':
                        _userText.text = value;
                        break;
                      case 'skills':
                        _skillsText.text = value;
                        break;
                      default:
                        print('non used value $key');
                        break;
                    }
                  }),
                }
              else
                {
                  print('Error while getting profile'),
                }
            })
        .catchError((err) => {print(err)});
  }

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
        child: Form(
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
                                    subtitle: Text(_nameText.text,),
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                  ListTile(
                                    title: Text(" Username"),
                                    subtitle: Text(_userText.text,),
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                  ListTile(
                                    title: Text(" Curso"),
                                    subtitle: Text(_courseText.text,),
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                  ListTile(
                                    title: Text("E-mail"),
                                    subtitle: Text(_mailText.text,),
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
                                  ),
                                  FlatButton(
                                    color: Colors.amberAccent,
                                    onPressed: (){
                                      String email = widget.user.email;
                                      Firestore.instance.collection("usuarios").document(email).delete();
                                      if (widget.user.email != null){
                                        Navigator.of(context).pushNamed(LoginMainView);
                                      }  
                                      //deleteuser();
                                                                                                               
                                        
                                    },
                                    textColor: Colors.black,
                                    child: Text("Excluir Conta"),
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
                padding: EdgeInsets.only(top: 10.0, bottom: 10),
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

  Future<DocumentSnapshot> getUserInformation(FirebaseUser user) async {
    return await Firestore.instance
        .collection('usuarios')
        .document(user.email)
        .get();
  }

   
}
