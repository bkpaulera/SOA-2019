
import 'package:flutter/material.dart';

class Login_Password extends StatefulWidget {
  @override
  _Login_PasswordState createState() => _Login_PasswordState();
}

class _Login_PasswordState extends State<Login_Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Esqueceu a Senha"),
        centerTitle: true,
        elevation: 0,
        backgroundColor:  Color(0xFF354978),
        ),

        body: Container(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Digite seu e-mail para recuperar a senha:",
                style: TextStyle(
                  
                  fontSize: 18,
                  ),
                ),
            TextFormField(
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(
                  color: Colors.deepPurpleAccent, 
                  fontSize: 15
                    ),
                  ),

            RaisedButton(onPressed: () {
                Navigator.pop(context);
                 },

            child: Text('Enviar'), 
          ),

          RaisedButton(onPressed: () {
            Navigator.pop(context);
          },
            child: Text('Voltar'), 
          ),
        ],
      ),
      ),
      ),
                
    );
  }
}