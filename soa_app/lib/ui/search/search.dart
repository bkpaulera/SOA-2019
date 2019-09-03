
import 'package:flutter/material.dart';
import 'package:soa_app/ui/search/card.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
        title: 'Flutter Demo',
        home: 
        Scaffold(
          appBar: AppBar(),
          body:Center(
                child: CardStudy(),
            )
        )
    );
  }
}