import 'package:bloc_breaking_bad/views/home/controllers/controller.dart';
import 'package:flutter/material.dart';

class MoreDetailsView extends StatelessWidget {
  int index;

  MoreDetailsView({this.index});

  /*MoreDetailsView(this.name, this.image, this.birthday, this.occupation,
      this.status, this.nickName, this.appearance, this.portrayed);


   */

  @override
  Widget build(BuildContext context) {
    final controller= HomeController.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(controller.list1[index].name),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(backgroundImage: NetworkImage('${controller.list1[index].image}'),radius: 70,),
              Text('${controller.list1[index].name}',style: TextStyle(fontSize: 30,),textAlign: TextAlign.center),
              Text('Birthday : ${controller.list1[index].birthday}', style: TextStyle(fontSize:17),),
              Text('Occupation : ${controller.list1[index].occupation}', textAlign: TextAlign.center,),
              Text('Status : ${controller.list1[index].status}'),
              Text('Nickname : ${controller.list1[index].nickName}'),
              Text('Appearance : ${controller.list1[index].appearance}'),
              Text('Portrayed : ${controller.list1[index].portrayed}'),


            ],
          ),
        ),
      ),
    );
  }
}
