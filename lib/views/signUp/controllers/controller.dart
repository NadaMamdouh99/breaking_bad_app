import 'dart:convert';

import 'package:bloc_breaking_bad/views/login/view.dart';
import 'package:bloc_breaking_bad/views/signUp/states/controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpController extends Cubit<SignUpStates>{
  SignUpController() : super(SignUpInit());

  static SignUpController of(context) => BlocProvider.of(context);

  final formKey= GlobalKey<FormState>();
  TextEditingController emailController=new TextEditingController();
  TextEditingController passwordController=new TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldState= new GlobalKey <ScaffoldState>();

  Future<void> SignUp(BuildContext context) async {
    if(!formKey.currentState.validate()) return;
    emit(SignUpLoading());
    try {
      final formData = ({
        'email': emailController.text,
        'password': passwordController.text,
        'returnSecureToken': true,

      });

      final response = await Dio().post(
          'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyD1qEpGXgtcmPyAXhTYsdLOBwa9bTocBYE',
          data: formData,
          options: Options(
            contentType: 'application/json',
            method: 'POST',
            validateStatus: (state) => state < 500,
          )
      );
      final data = response.data as Map;
      if (data.containsKey('idToken'))
        {
          emit(SignUpSuccess());
          //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginView()));
        }
      else
        {
          emit(SignUpError());
          //scaffoldState.currentState.showSnackBar(new SnackBar(content: Text('error, please try again')));
        }
        //{return 'error, please try again';}
    }
    catch (e,s) {
      print(e);
      print(s);
    }
    //print(result);
    emit(SignUpInit());
  }
}