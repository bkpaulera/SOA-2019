import 'package:flutter/material.dart';
import 'package:soa_app/ui/search/card.dart';

const _list = 5;


class CreateCard extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return Padding( 
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index){
          return CardStudy();
        },
      ),
    );
  }
}