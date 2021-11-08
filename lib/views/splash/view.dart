import 'package:bloc_breaking_bad/views/splash/controllers/controller.dart';
import 'package:bloc_breaking_bad/views/splash/states/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/*
class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  Future<dynamic> check() {
    //bool conEmail=  SharedHelper.containsemail();
    //bool conPass= SharedHelper.containPass();
    bool conId= SharedHelper.containsId();
    if(conId == true) {
      return Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()));
    }
    else {
      return Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
    }
  }

  @override
  void initState() {
    super.initState();
    //Timer(Duration(seconds: 3),Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView())));
    new Future.delayed(
        const Duration(seconds: 4),
            () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpView()));
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child:  Center(child: InkWell(child: Icon(Icons.notifications, size: 40,),onTap: null,))
      ),
    );
  }
}
*/

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context)=> SplashController()..check(context),
      child: Scaffold(
        body:  Center(child: Icon(Icons.notifications, size: 40,)),
      ),
      );
  }
}
