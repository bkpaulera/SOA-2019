
import 'package:flutter/material.dart';
import 'package:soa_app/main.dart';
import 'package:soa_app/routes/routes_path.dart';
import 'package:soa_app/ui/login.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch (settings.name){
      case HomeMainView:
        return MaterialPageRoute(builder: (_)=>Home());
      case LoginMainView:
      return MaterialPageRoute(builder: (_) =>Login());
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
