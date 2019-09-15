import 'package:flutter/material.dart';
import 'package:soa_app/routes.dart';
import 'package:soa_app/routes/routes_path.dart';

void main(){
  runApp(MaterialApp(
    //initialRoute: LoginMainView,
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
      //appBar: AppBar(
        //title: Text("Projeto SOA"),
        //backgroundColor: Colors.blueAccent,
        //centerTitle: true,
      //),
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/1.3,
            decoration: BoxDecoration(
              color:  Color(0x99181AB9),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0),
                      child:
                      Image( 
                        image: NetworkImage('https://images.cdn3.stockunlimited.net/preview1300/reading-book-icon_1577769.jpg'),
                        width: 300,
                        height: 300,
                        ),
                        
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('PROJETO SOA',
                  style: TextStyle(
                    color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ],
            ),
        ),
         Padding(
           padding: const EdgeInsets.all(40.0),
           child: RaisedButton(onPressed: () {
            Navigator.of(context).pushNamed(LoginMainView);
        },
        child: Text('Go to Login'),
        ),
         ),
        ],
      ),
       
    );
  }
}