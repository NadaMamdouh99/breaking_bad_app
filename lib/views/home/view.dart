import 'package:bloc_breaking_bad/core/shared_helper.dart';
import 'package:bloc_breaking_bad/views/home/components/app_bar.dart';
import 'package:bloc_breaking_bad/views/home/components/charecters_list.dart';
import 'package:bloc_breaking_bad/views/home/controllers/controller.dart';
import 'package:bloc_breaking_bad/views/signUpOrLogin/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeController()..getData(),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text('API'),
            actions: [
              IconButton(icon: Icon(Icons.cancel_outlined),
                onPressed:
                    ()  {
                  SharedHelper.removeinfo();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpOrLogin()));
                },
              ),
            ],
          ),
          body: HomeCharactersList(),
      ),
    );
  }
}
