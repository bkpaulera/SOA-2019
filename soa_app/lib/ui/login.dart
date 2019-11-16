
import 'package:flutter/material.dart';
import 'package:soa_app/main.dart';
import 'package:soa_app/routes/routes_path.dart';


class Login extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {

    String _email, _password;
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image(
          image: NetworkImage('https://images.cdn3.stockunlimited.net/preview1300/reading-book-icon_1577769.jpg'),
          width: 400,
          height: 400,
          ),
        ),
      );

    final email = TextFormField(
      validator: (input){
        if(input.isEmpty){
          return 'Por favor preencha o campo de email';
        } 
      },
      onSaved: (input) => _email = input,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      validator: (input){
        if(input.isEmpty){
          return 'Por favor preencha o campo de senha';
        } if(input.length < 6){
          return 'Sua senha tem menos de 6 caracteres';
        }
      },
      onSaved: (input) => _password = input,
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(HomeView);
        },
        padding: EdgeInsets.all(14),
        color: Colors.lightBlueAccent,
        child: Text('Login', style: TextStyle(fontSize: 18 ,color: Colors.white)),
      ),
    );

    final registerButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 1.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(LoginRegisterView);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Registrar', style: TextStyle(fontSize: 18 ,color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(LoginPasswordView);
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            registerButton,
            forgotLabel
          ],
        ),
      ),
    );
    void signIn(){
          final formState = _formKey.currentState;
          if(formState.validate()){

          }
        }
  }
}
