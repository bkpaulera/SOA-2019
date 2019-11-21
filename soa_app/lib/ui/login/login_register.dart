import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  static String tag = 'register-page';
  @override
  _RegisterState createState() => new _RegisterState();
}

class _RegisterState extends State<Register> {
  
    String _nome,_email, _senha, _nomeuser, _curso, _faculdade, _skills;
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    // final databaseReference = Firestore.instance;

    bool validateAndSave()  {
    final formState = _formKey.currentState;
    if( formState.validate()) {
      formState.save();
      return true;
      }
      return false;
      }

    void validateAndSubmit() async {
      if(validateAndSave()){
        try{
        AuthResult user = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _senha);
        user.user.sendEmailVerification();
        print('Registrado de: ${user}');
        Navigator.of(context).pop();
        _formKey.currentState.reset();
        }catch(e){
          print('Erro: $e');
        }
      }
    }

   void createRecord() async {
    if(validateAndSave()){
        Firestore.instance.collection('usuarios').document(_nomeuser).setData({
          "nome": _nome,
          "email": _email,
          "nomeUser": _nomeuser,
          "curso": _curso,
          "faculdade": _faculdade,
          "skills": _skills
        }).then((result) => {

        });
        
    }
}


  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image(
          image: NetworkImage('https://images.cdn3.stockunlimited.net/preview1300/reading-book-icon_1577769.jpg'),
          width: 300,
          height: 300,
          ),
        ),
      );

    final name = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      onSaved: ( value ) => _nome = value,
      decoration: InputDecoration(
        hintText: 'Nome',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

      final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      validator: ( value ) => value.isEmpty ? 'Email está em branco': null,
      onSaved: ( value ) => _email = value,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final senha = TextFormField(
      autofocus: false,
      autocorrect: false,
      obscureText: true,
      validator: ( value ) => value.isEmpty ? 'Senha está em branco': null,
      onSaved: ( value ) => _senha = value,
      decoration: InputDecoration(
        hintText: 'Senha',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final nomeUsuario = TextFormField(
      autofocus: false,
      onSaved: ( value ) => _nomeuser = value,
      decoration: InputDecoration(
        hintText: 'Nome de usuario',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final curso = TextFormField(
      autofocus: false,
      onSaved: ( value ) => _curso = value,
      decoration: InputDecoration(
        hintText: 'Curso',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final faculdade = TextFormField(
      autofocus: false,
      onSaved: ( value ) => _faculdade = value,
      decoration: InputDecoration(
        hintText: 'Faculdade',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final skills = TextFormField(
      autofocus: false,
      onSaved: ( value ) => _skills = value,
      decoration: InputDecoration(
        hintText: 'Digite aqui algumas skills',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final cadastrarButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed:(){
          validateAndSubmit();
          createRecord();

          },
        padding: EdgeInsets.all(12),
        color: Colors.yellowAccent,
        child: Text('Cadastrar', style: TextStyle(fontSize: 18 ,color: Colors.black87)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 65),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            name,
            SizedBox(height: 8.0),
            email,
            SizedBox(height: 8.0),
            senha,
            SizedBox(height: 8.0),
            nomeUsuario,
            SizedBox(height: 8.0),
            curso,
            SizedBox(height: 8.0),
            faculdade,
            SizedBox(height: 8.0),
            skills,
            SizedBox(height: 14.0),
            cadastrarButton,
          ],
        ),
      ),
    );
  }
}
