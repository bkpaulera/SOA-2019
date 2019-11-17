
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:soa_app/routes/routes_path.dart';
import 'package:soa_app/ui/search/card.dart';
import 'package:soa_app/ui/search/search.dart';

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
        backgroundColor: Colors.lightBlueAccent,
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
                    Colors.lightBlueAccent,
                    Colors.lightBlueAccent,
                    ]
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 48.0,
                  child: Image(
                  image: NetworkImage('https://images.cdn3.stockunlimited.net/preview1300/reading-book-icon_1577769.jpg'),
                  width: 300,
                  height: 300,
                    ),
                  ),
                ),
              
              CostumListTitle(Icons.person,'Perfil',(){Navigator.pop(context);Navigator.of(context).pushNamed(ProfileInfoView);}),
              CostumListTitle(Icons.find_replace, 'Pesquisar',(){Navigator.pop(context);Navigator.of(context).pushNamed(SearchView);}),
              CostumListTitle(Icons.chat,'Conversas',(){Navigator.pop(context);Navigator.of(context).pushNamed(TalksView);}),
              //CostumListTitle(Icons.settings,'Configurações',(){Navigator.pop(context);Navigator.of(context).pushNamed(ProfileConfigView);}),
              CostumListTitle(Icons.exit_to_app,'Deslogar',(){Navigator.pop(context);Navigator.of(context).pushNamed(LoginMainView);}),

            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              child:      
              ListView.builder(padding: EdgeInsets.all(25.0),
              itemCount: CardsAlerts.length,
              itemBuilder: (context,index){
                return CardStudy();
                  },
              ),  
            ),
        ),
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
        splashColor: Colors.lightBlueAccent[100],
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