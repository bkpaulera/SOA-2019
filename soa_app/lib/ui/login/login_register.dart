
import 'package:flutter/material.dart';
import 'package:soa_app/main.dart';
import 'package:soa_app/routes/routes_path.dart';


class Register extends StatefulWidget {
  static String tag = 'register-page';
  @override
  _RegisterState createState() => new _RegisterState();
}

class _RegisterState extends State<Register> {
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
      decoration: InputDecoration(
        hintText: 'Nome',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

      final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final nomeUsuario = TextFormField(
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Nome de usuario',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final curso = TextFormField(
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Curso',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final faculdade = TextFormField(
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Faculdade',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final skills = TextFormField(
      autofocus: false,
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
        onPressed: () {
         
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Cadastrar', style: TextStyle(fontSize: 18 ,color: Colors.white)),
      ),
    );

    //final forgotLabel = FlatButton(
    //  child: Text(
    //    'Forgot password?',
    //    style: TextStyle(color: Colors.black54),
    //  ),
    //  onPressed: () {
    //    Navigator.of(context).pushNamed(LoginPasswordView);
    //  },
    //);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            name,
            SizedBox(height: 8.0),
            email,
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
