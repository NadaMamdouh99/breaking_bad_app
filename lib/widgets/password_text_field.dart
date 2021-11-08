import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  TextEditingController passwordController;


  PasswordTextField({this.passwordController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      keyboardType: TextInputType.visiblePassword,
      autofocus: false,
      decoration: new InputDecoration(
          hintText: 'Password',
          icon: new Icon(
            Icons.lock,
            color: Colors.grey,
          )),
      validator: (value) {
        if(value.isEmpty) return 'password can\'t be empty';
        else if (value.length < 4) return 'The password must be more than 4 char';
        else return null;
      },
      controller: passwordController,
    );
  }
}
