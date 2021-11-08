import 'package:bloc_breaking_bad/views/login/view.dart';
import 'package:bloc_breaking_bad/views/signUp/controllers/controller.dart';
import 'package:bloc_breaking_bad/views/signUp/states/controller.dart';
import 'package:bloc_breaking_bad/widgets/email_text_field.dart';
import 'package:bloc_breaking_bad/widgets/header.dart';
import 'package:bloc_breaking_bad/widgets/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final controller= SignUpController.of(context);
    return Form(
        key: controller.formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              EmailTextField(emailController: controller.emailController,),
              PasswordTextField(passwordController: controller.passwordController,),
            ],
          ),
        ),
    );
  }
}
