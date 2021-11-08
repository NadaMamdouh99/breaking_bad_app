import 'package:bloc_breaking_bad/core/shared_helper.dart';
import 'package:bloc_breaking_bad/views/signUpOrLogin/view.dart';
import 'package:flutter/material.dart';

homeAppBar() {
  return AppBar(
    backgroundColor: Colors.purple,
    title: Text('API'),
    actions: [
      IconButton(icon: Icon(Icons.cancel_outlined),
        onPressed:
            ()  {
          SharedHelper.removeinfo();
          //Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpOrLogin()));
        },
      ),
    ],
  );
}