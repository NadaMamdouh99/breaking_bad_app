import 'package:bloc_breaking_bad/views/home/controllers/controller.dart';
import 'package:bloc_breaking_bad/views/home/states/controller.dart';
import 'package:bloc_breaking_bad/views/home/widgets/character_card.dart';
import 'package:bloc_breaking_bad/views/more_details/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCharactersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller= HomeController.of(context);
    return BlocBuilder(
      cubit: controller,
      builder: (context,state) => Center(
          child: state is HomeLoading ? CircularProgressIndicator() : ListView.builder(
            itemCount: controller.list1.length,
            itemBuilder: (BuildContext context,int index) {
              return InkWell(
                child: CharacterCard(
                  name: controller.list1[index].name,
                  image: controller.list1[index].image,
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => BlocProvider.value(child: MoreDetailsView(index: index,),value: controller,)));
                },
              );
            },
          )
      ),
    );
  }
}
