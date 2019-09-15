
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
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: (){
              Navigator.of(context).pushNamed(SearchView);
            },
          ),
        ],
        ),
        
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
               DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.deepOrange,
                    Colors.deepOrangeAccent,
                    ]
                  )
                ),
                child: Text('Esse será o Topo'),),
              
              CostumListTitle(Icons.person,'Perfil',(){Navigator.pop(context);Navigator.of(context).pushNamed(ProfileInfoView);}),
              CostumListTitle(Icons.find_replace, 'Pesquisar',(){Navigator.pop(context);Navigator.of(context).pushNamed(SearchView);}),
              CostumListTitle(Icons.chat,'Conversas',(){Navigator.pop(context);Navigator.of(context).pushNamed(TalksView);}),
              CostumListTitle(Icons.settings,'Configurações',(){Navigator.pop(context);Navigator.of(context).pushNamed(ProfileConfigView);}),
              CostumListTitle(Icons.exit_to_app,'Deslogar',(){Navigator.pop(context);Navigator.of(context).pushNamed(LoginMainView);}),

            ],
          ),
        ),
      
      //  body:
      // Center(
       //   child: Center(
        //    child: Column(
         //   children: <Widget>[
              // Deslogar
           //   RaisedButton(onPressed: () {Navigator.of(context).pop();},child: Text('Deslogar'),),
              //Chat
          //    RaisedButton(onPressed: () {Navigator.of(context).pushNamed(ChatView);},child: Text('Chat'),),
              //Conversas
          //    RaisedButton(onPressed: () {Navigator.of(context).pushNamed(TalksView);},child: Text('Conversas'),),
              //Profile
          //    RaisedButton(onPressed: () {Navigator.of(context).pushNamed(ProfileInfoView);},child: Text('Informação do Perfil'),),
              //Configuração
         //     RaisedButton(onPressed: () {Navigator.of(context).pushNamed(ProfileConfigView);},child: Text('Configuração'),),
              //Search
         //     RaisedButton(onPressed: () {Navigator.of(context).pushNamed(SearchView);},child: Text('Tela de Busca'),),
         //      ],
        //  ),
          // )
        // ),
    );
  }
}
class CostumListTitle  extends StatelessWidget{

      IconData icon;
      String text;
      Function onTap;

      CostumListTitle(this.icon, this.text, this.onTap);

  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0,0,8.0,0),
      child: InkWell(
       // splashColor: Colors.deepPurpleAccent,
        onTap: onTap,
        child:Container(
          height: 50,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(icon),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(text,style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
              Icon(Icons.arrow_right),
            ],
        ),
        ),
      ),
    ); 
  }
}