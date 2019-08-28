
import 'package:flutter/material.dart';
import 'package:soa_app/routes/routes_path.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.deepPurpleAccent,),
        body:Center(
          child: Center(
            child: Column(
            children: <Widget>[
              RaisedButton(onPressed: () {Navigator.of(context).pop();},child: Text('Deslogar'),),
              //Chat
              RaisedButton(onPressed: () {Navigator.of(context).pushNamed(ChatView);},child: Text('Chat'),),
              RaisedButton(onPressed: () {Navigator.of(context).pushNamed(TalksView);},child: Text('Conversas'),),
              //Profile
              RaisedButton(onPressed: () {Navigator.of(context).pushNamed(ProfileInfoView);},child: Text('Informação do Perfil'),),
              RaisedButton(onPressed: () {Navigator.of(context).pushNamed(ProfileConfigView);},child: Text('Configuração'),),
              //Search
              RaisedButton(onPressed: () {Navigator.of(context).pushNamed(SearchView);},child: Text('Tela de Busca'),),
            ],
          ),
          )
        )
    );
  }
}