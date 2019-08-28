
import 'package:flutter/material.dart';
import 'package:soa_app/routes.dart';
import 'package:soa_app/routes/routes_path.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: '/',
    onGenerateRoute: RouterGenerator.generateRoute,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Projeto SOA"),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(onPressed: () {
          Navigator.of(context).pushNamed(LoginMainView);
        },
        child: Text('Go to Login'),),
      ),
    );
  }
}