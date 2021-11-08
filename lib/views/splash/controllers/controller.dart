
import 'package:bloc_breaking_bad/core/shared_helper.dart';
import 'package:bloc_breaking_bad/views/home/view.dart';
import 'package:bloc_breaking_bad/views/login/view.dart';
import 'package:bloc_breaking_bad/views/splash/states/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashController extends Cubit<SplashStates>{
  SplashController() : super(SplashInit());

   check(BuildContext context) {
    //bool conEmail=  SharedHelper.containsemail();
    //bool conPass= SharedHelper.containPass();
    bool conId= SharedHelper.containsId();
    if(conId == true) {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeView()));
    }
    else {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginView()));
    }
  }

}