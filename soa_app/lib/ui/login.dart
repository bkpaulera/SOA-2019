
import 'package:flutter/material.dart';
import 'package:soa_app/routes/routes_path.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:soa_app/ui/home.dart';


class Login extends StatefulWidget {
  // static String tag = 'login-page';
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {

  
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        AuthResult user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
        print('Login de: $user');
        Navigator.push(context, MaterialPageRoute(builder: ( context ) => Home(user: user.user)));
        _formKey.currentState.reset();
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
          image: AssetImage('../images/LogoApp.jpeg'),
          width: 400,
          height: 400,
          ),
        ),
      );

    final email = TextFormField(
      autocorrect: false,
      validator: ( value ) => value.isEmpty ? 'Email está em branco': null,
      onSaved: ( value ) => _email = value,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autocorrect: false,
      validator: ( value ) => value.isEmpty ? 'Senha está em branco': null,
      onSaved: ( value ) => _password = value,
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
        onPressed: validateAndSubmit,
        padding: EdgeInsets.all(14),
        color: Colors.yellowAccent,
        child: Text('Login', style: TextStyle(fontSize: 18 ,color: Colors.black87)),
      ),
    );

    var raisedButton = RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: (){
             Navigator.of(context).pushNamed(LoginRegisterView);
        },
        padding: EdgeInsets.all(12),
        color: Colors.yellowAccent,
        child: Text('Registrar', style: TextStyle(fontSize: 18 ,color: Colors.black87)),
      );
    final registerButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 1.0),
      child: raisedButton,
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
      body: Form(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 65),
          children: <Widget>[
            logo,
            Text(
              "Hive Study",
              textAlign: TextAlign.center,
              style: TextStyle(color: 
                      Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0),),
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
  }
}
