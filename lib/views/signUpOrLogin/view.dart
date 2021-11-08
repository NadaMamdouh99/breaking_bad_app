import 'package:bloc_breaking_bad/views/login/view.dart';
import 'package:bloc_breaking_bad/views/signUp/view.dart';
import 'package:flutter/material.dart';


class SignUpOrLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Sign Up',textAlign: TextAlign.center,),
              onPressed: ()  {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpView()));
              },
            ),
            RaisedButton(
              child: Text('Login'),
              onPressed: ()  {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
