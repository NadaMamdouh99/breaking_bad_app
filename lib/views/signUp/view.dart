import 'package:bloc_breaking_bad/views/signUp/components/confirm_button.dart';
import 'package:bloc_breaking_bad/views/signUp/components/sign_up_form.dart';
import 'package:bloc_breaking_bad/views/signUp/controllers/controller.dart';
import 'package:bloc_breaking_bad/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller=SignUpController();
    return BlocProvider(
      create: (context) => controller,
      child: Scaffold(
        key: controller.scaffoldState,
       body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Header(title: 'SignUp',),
            SignUpForm(),
            SignUpConfirmButton(),
          ],
        ),
      ),
    );
  }
}
