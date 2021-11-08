import 'package:bloc_breaking_bad/core/shared_helper.dart';
import 'package:bloc_breaking_bad/views/home/view.dart';
import 'package:bloc_breaking_bad/views/signUp/view.dart';
import 'package:bloc_breaking_bad/views/splash/view.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpView(),
    );
  }
}
