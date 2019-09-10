
import 'package:flutter/material.dart';
import 'package:soa_app/main.dart';
import 'package:soa_app/routes/routes_path.dart';
import 'package:soa_app/ui/chat/chat.dart';
import 'package:soa_app/ui/chat/talks.dart';
import 'package:soa_app/ui/home.dart';
import 'package:soa_app/ui/login.dart';
import 'package:soa_app/ui/login/login_password.dart';
import 'package:soa_app/ui/login/login_register.dart';
import 'package:soa_app/ui/profile/config.dart';
import 'package:soa_app/ui/profile/info_user.dart';
import 'package:soa_app/ui/search/card.dart';
import 'package:soa_app/ui/search/create_card.dart';
import 'package:soa_app/ui/search/search.dart';


class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch (settings.name){
      case HomeMainView:
        return MaterialPageRoute(builder: (_)=>HomeMain());
      //Home Pagina
      case HomeView:
        return MaterialPageRoute(builder: (_)=>Home());
      //Pagina Login
      case LoginMainView:
      return MaterialPageRoute(builder: (_) =>Login());
      //Paginas Filhas 
      //Login
      case LoginPasswordView :
        return MaterialPageRoute(builder: (_)=>Login_Password());
      case LoginRegisterView: 
        return MaterialPageRoute(builder: (_)=>Register());
      //Chat
      case ChatView :
        return MaterialPageRoute(builder: (_)=>Chat()); 
      case TalksView :
        return MaterialPageRoute(builder: (_)=>Talks());
      //Profile
      case ProfileConfigView :
        return MaterialPageRoute(builder: (_)=>Config());
      case ProfileInfoView : 
        return MaterialPageRoute(builder: (_)=>Info_User());
      case  SearchView : 
        return MaterialPageRoute(builder: (_)=>Search());
      case  CardView : 
        return MaterialPageRoute(builder: (_)=>CardStudy());
      case  CreateCardView : 
        return MaterialPageRoute(builder: (_)=>CreateCard());

      default :
        return _errorRoute();
    }
  }
  
  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text('Error 404') ,backgroundColor: Colors.redAccent,),
        body: Center(
          child: Text('Error 404'),
        ),
      );
    });
  }
}
