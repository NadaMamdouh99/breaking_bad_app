import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  String name;
  String image;

  CharacterCard({this.name,this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(image),
      ),
      /*
      trailing: RaisedButton(
        child: Text('More details',style: TextStyle(fontSize: 10),),
        color: Colors.purple.shade100,
        onPressed: null,
      ),
       */
    );
  }
}
