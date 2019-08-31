
import 'package:flutter/material.dart';
import 'package:soa_app/routes/routes_path.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.deepPurpleAccent,),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

                TextFormField(
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(color: Colors.deepPurpleAccent, fontSize: 15),
                decoration:  InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(color: Colors.deepPurpleAccent),
                    ),
                  ),

              TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.deepPurpleAccent, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(color: Colors.deepPurpleAccent),
                ),
              ),

               RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(HomeView);
                  },
                  child: Text('Login'),
                  ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(LoginPasswordView);
                  },
                  child: Text('Esqueceu s Senha'),
                  ),
              RaisedButton(
                onPressed: () 
                {Navigator.of(context).pushNamed(LoginRegisterView);
                },
                child: Text('Cadastrar'),
                ),
            ],
            ),
          ),
      ),
    );
  }
}