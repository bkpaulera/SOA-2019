import 'package:flutter/material.dart';
import 'package:soa_app/routes.dart';
import 'package:soa_app/routes/routes_path.dart';
import 'package:soa_app/ui/login.dart';

void main(){

  runApp(MaterialApp(
    title: 'MatchStudos',
    //initialRoute: LoginMainView,
    onGenerateRoute: RouterGenerator.generateRoute,
    home: Login(),
  ));
}