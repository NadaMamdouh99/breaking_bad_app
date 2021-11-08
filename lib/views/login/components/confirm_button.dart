import 'package:bloc_breaking_bad/views/login/controllers/controller.dart';
import 'package:bloc_breaking_bad/views/login/states/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginConfirmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller=LoginController.of(context);
    return BlocBuilder <LoginController,LoginStates>(
      builder:(context,state) => state is LoginLoading ? Center(child: CircularProgressIndicator(),) : ElevatedButton(onPressed: () async {
        print(controller.emailController.text);
        print(controller.passwordController.text);
        controller.login(context);
      }
        ,child: Text('Login'),
      ),
    );
  }
}
