import 'package:bloc_breaking_bad/views/login/view.dart';
import 'package:bloc_breaking_bad/views/signUp/controllers/controller.dart';
import 'package:bloc_breaking_bad/views/signUp/states/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpConfirmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller=SignUpController.of(context);
    return BlocConsumer(
      cubit: controller,
      listener: (context, state) {
        if (state is SignUpSuccess){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginView()));
        }
        else if (state is SignUpError) {
          controller.scaffoldState.currentState.showSnackBar(new SnackBar(content: Text('error, please try again')));
        }
      },
      builder:(context,state) => state is SignUpLoading ? Center(child: CircularProgressIndicator(),) : ElevatedButton(onPressed: () async {
        //final controller= SignUpController.of(context);
        //await SignUpController()..SignUp(emailController.text, passwordController.text);
        print(controller.emailController.text);
        print(controller.passwordController.text);

        controller.SignUp(context);

        /*
        final message=await controller.SignUp(emailController.text, passwordController.text);
        if(message!='ok')
          scaffoldState.currentState.showSnackBar(new SnackBar(content: Text(message)));
        else
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginView()));

        */
      }
        ,child: Text('Sign Up'),
      ),
    );


    /*BlocBuilder<SignUpController,SignUpStates>(
      builder:(context,state) => state is SignUpLoading ? Center(child: CircularProgressIndicator(),) : ElevatedButton(onPressed: () async {
        //final controller= SignUpController.of(context);
        //await SignUpController()..SignUp(emailController.text, passwordController.text);
        print(controller.emailController.text);
        print(controller.passwordController.text);

        controller.SignUp(context);

        /*
        final message=await controller.SignUp(emailController.text, passwordController.text);
        if(message!='ok')
          scaffoldState.currentState.showSnackBar(new SnackBar(content: Text(message)));
        else
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginView()));

        */
      }
          ,child: Text('Sign Up'),
        ),
    );
    */
  }
}
