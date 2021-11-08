import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  String title;


  Header({this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15,),
        Icon(Icons.person, size: 60,color: Colors.purple),
        Text('$title',textAlign: TextAlign.center,),
        SizedBox(height: 20,),
      ],
    );
  }
}
