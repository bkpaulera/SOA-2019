
import 'package:flutter/material.dart';
import 'package:soa_app/routes.dart';
import 'package:soa_app/routes/routes_path.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: LoginMainView,
    onGenerateRoute: RouterGenerator.generateRoute,
    home: HomeMain(),
  ));
}

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
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
        },
        child: Text('Go to Login'),),
      ),
    );
  }
}