
import 'package:flutter/material.dart';
import 'package:soa_app/main.dart';
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
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFF354978),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.of(context).pushNamed(HomeMainView);
            },
          ),
        ),

        body: Container(
         // padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/2.5,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                         begin: Alignment.topCenter,
                         end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF354978),
                            Color(0xFF67769a)
                            ],
                        ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                 ),
                ),
                  ),
              ),
              

              Container(            // BOX DO EMAIL
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                     Container(
                    width: 300,
                    height: 50,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0)
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8.0,
                        ),
                      ]
                    ),
                    
                    child: TextField(
                   keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Colors.blueGrey,
                      ),
                    hintText: 'E-mail',
                    //labelText: 'E-mail',
                    labelStyle: TextStyle(color: Colors.deepPurpleAccent),
                  ),
                ),
              ),
                  ],
                  ),
                ),

              Padding(                // BOX DA SENHA
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                       Container(
                      width: 300,
                      height: 50,
                      padding: EdgeInsets.all(10.0),      //Padding da caixa de decorativa
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 8.0,
                          ),
                        ]
                      ),
                      
                      child: TextField(
                     keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.security,
                        color: Colors.blueGrey,
                        ),
                      hintText: 'Senha',
                     // labelText: 'Senha',
                      labelStyle: TextStyle(color: Colors.deepPurpleAccent),
                    ),
                  ),
                ),
                    ],
                    ),
                  ),
              ),
              
              Container(
                height: 40,
                alignment: Alignment.centerRight,
                child: FlatButton(
                  child: Text(
                    'Esqueci minha senha', 
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 15,
                      ),
                    ),
                   onPressed: () {
                    Navigator.of(context).pushNamed(LoginPasswordView);
                    },
                  ),
              ),

              Padding(
                 padding: const EdgeInsets.symmetric(horizontal:30.0, vertical: 4.0),
                child: Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    color: Colors.grey[300],
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                      child: Text(
                      'Login', 
                      style: TextStyle(
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.right,
                      ),
                     onPressed: () {
                      Navigator.of(context).pushNamed(HomeView);
                      },
                      ),
                    ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:30.0, vertical: 4.0),
                child: Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    color: Colors.grey[300],
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                      child: Text(
                      'Cadastrar', 
                      style: TextStyle(
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.right,
                      ),
                     onPressed: () {
                      Navigator.of(context).pushNamed(LoginRegisterView);
                      },
                      ),
                    ),
                ),
              ),
             //RaisedButton(
                 // onPressed: () {
                   // Navigator.of(context).pushNamed(HomeView);
                   // },
                   // child: Text('Login'),
                   // ),

               //RaisedButton(
               //   onPressed: () {
               //     Navigator.of(context).pushNamed(LoginPasswordView);
                //    },
                 //   child: Text('Esqueceu a senha'),
                  //  ),

             // RaisedButton(
               //   onPressed: () {
                //  Navigator.of(context).pushNamed(LoginRegisterView);
                //  },
                 // child: Text('Cadastrar'),
                  //),

              ],
            ),
          ),
      ),
    );
  }
}