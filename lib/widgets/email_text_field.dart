import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {

  TextEditingController emailController;


  EmailTextField({this.emailController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: new InputDecoration(
          hintText: 'Email',
          icon: new Icon(
            Icons.mail,
            color: Colors.grey,
          )),
      validator: (value) {
        if(value.isEmpty) return 'Email can\'t be empty';
        else if (!value.contains('@')) return 'Mising @';
        else return null;
      },
      controller: emailController,
    );
  }
}
