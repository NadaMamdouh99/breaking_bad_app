import 'package:bloc_breaking_bad/core/shared_helper.dart';
import 'package:bloc_breaking_bad/views/home/view.dart';
import 'package:bloc_breaking_bad/views/login/states/controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginController extends Cubit<LoginStates>{
  LoginController() : super(LoginInit());

  static LoginController of(context) => BlocProvider.of(context);


  final formKey= GlobalKey<FormState>();
  TextEditingController emailController=new TextEditingController();
  TextEditingController passwordController=new TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldState= new GlobalKey <ScaffoldState>();

  Future<void> login(BuildContext context) async{
    if(!formKey.currentState.validate()) return;
    emit(LoginLoading());
    try {
      final formData = ({
        'email': emailController.text,
        'password': passwordController.text,
        'returnSecureToken': true
      });

      final response = await Dio().post(
          'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyD1qEpGXgtcmPyAXhTYsdLOBwa9bTocBYE',
          data: formData,
          options: Options(
            contentType: 'application/json',
            method: 'POST',
            validateStatus: (state) => state < 500,
          )
      );
      final data = response.data as Map;
      print(data);
      if (data.containsKey('idToken'))
      {
        SharedHelper.setinfo(emailController.text, passwordController.text);
        SharedHelper.setId(data['idToken']);

        print('////');
        print('==' + SharedHelper.getId);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeView()));
      }
      else
      scaffoldState.currentState.showSnackBar(new SnackBar(content: Text('error, please try again')));
    } catch(e,s) {
      print(e);
      print(s);
    }
    emit(LoginInit());
  }
}