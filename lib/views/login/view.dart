import 'package:bloc_breaking_bad/views/login/components/confirm_button.dart';
import 'package:bloc_breaking_bad/views/login/components/login_form.dart';
import 'package:bloc_breaking_bad/views/login/controllers/controller.dart';
import 'package:bloc_breaking_bad/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller=LoginController();
    return BlocProvider(
      create: (context) => controller,
      child: Scaffold(
        key: controller.scaffoldState,
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Header(title: 'Login',),
            LoginForm(),
            LoginConfirmButton(),
          ],
        ),
      ),
    );
  }
}
