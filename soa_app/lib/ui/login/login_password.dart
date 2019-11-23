import 'package:flutter/material.dart';
import 'package:soa_app/routes.dart';
import 'package:soa_app/routes/routes_path.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login_Password extends StatefulWidget {
  static String tag = 'forgot-page';
  @override
  _Login_PasswordState createState() => new _Login_PasswordState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

String _email;

class _Login_PasswordState extends State<Login_Password> {

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
        await FirebaseAuth.instance.sendPasswordResetEmail(email: _email);
        _formKey.currentState.reset();
        // Navigator.of(context).pop();
        }catch(e){
          print('Erro: $e');
        }
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

    final texto = Text('Digite seu email para recuperação', 
    style: TextStyle(
        fontSize: 16,
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


    final sendButtom = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed:validateAndSubmit,
        padding: EdgeInsets.all(12),
        color: Colors.yellow,
        child: Text('Enviar', style: TextStyle( fontSize: 18,color: Colors.black87)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 55.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            texto,
            SizedBox(height: 15.0),
            email,
            SizedBox(height: 8.0),
           // password,
            SizedBox(height: 24.0),
            sendButtom,
           // forgotLabel
          ],
        ),
      ),
    );
  }
}