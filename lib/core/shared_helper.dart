import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper{
  // Null
  static SharedPreferences _sharedPreferences;

  static void init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static void setId(String value) {
    _sharedPreferences.setString('idToken', value);
  }

  static void setinfo(String email, String password) {
    _sharedPreferences.setString('email', email);
    _sharedPreferences.setString('password', password);
  }

  /*static void setPassword(String value) {
    _sharedPreferences.setString('password', value);
  }*/

  static bool containsId() {
    return _sharedPreferences.containsKey('idToken');
  }

  static bool containsemail() {
    return _sharedPreferences.containsKey('email');
  }

  static bool containPass() {
    return _sharedPreferences.containsKey('password');
  }

  /*static void removeId() {
    _sharedPreferences.remove('idToken');
  }*/

  static void removeinfo() {
    _sharedPreferences.remove('email');
    _sharedPreferences.remove('password');
    _sharedPreferences.remove('idToken');
  }

  static String get getId {
    return _sharedPreferences.getString('password');
  }


}