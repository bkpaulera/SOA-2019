
import 'package:flutter/material.dart';
import 'package:soa_app/routes/routes_path.dart';
import 'package:soa_app/ui/login.dart';
import 'package:soa_app/ui/search/create_card.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Home extends StatefulWidget {

  const Home({
    Key key,
    this.user
    }) : super(key: key);
  final FirebaseUser user ;

  @override
  _HomeState createState() => _HomeState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
   Future <void> signOut()  async {
    FirebaseAuth.instance.signOut();
    }


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem vindo ${widget.user.email}',style:TextStyle(color: Colors.black87),),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black87,),
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
                    Colors.yellow,
                    Colors.yellow,
                    ]
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.black87,
                  radius: 48.0,
                  child: Image(
                  image: NetworkImage('https://images.cdn3.stockunlimited.net/preview1300/reading-book-icon_1577769.jpg'),
                  width: 300,
                  height: 300,
                    ),
                  ),
                ),
              
              CostumListTitle(Icons.person,'Perfil',(){Navigator.pop(context);Navigator.of(context).pushNamed(ProfileInfoView);}),
              //CostumListTitle(Icons.find_replace, 'Pesquisar',(){Navigator.pop(context);Navigator.of(context).pushNamed(SearchView);}),
              //CostumListTitle(Icons.chat,'Conversas',(){Navigator.pop(context);Navigator.of(context).pushNamed(TalksView);}),
              //CostumListTitle(Icons.settings,'Configurações',(){Navigator.pop(context);Navigator.of(context).pushNamed(ProfileConfigView);}),
              CostumListTitle(Icons.exit_to_app,'Deslogar',(){
                signOut();
                Navigator.of(context).pushNamed(LoginMainView);
              }
                ),

            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PageView(
            children: <Widget>[
                  CreateCard()
            ],
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
        splashColor: Colors.yellow,
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