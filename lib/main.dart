import 'package:flutter/material.dart';
import 'pages/loginscreen.dart';
import 'pages/homescreen.dart';
import 'pages/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => SplashScreen(),
      '/login': (context) => LoginScreen(),
      '/home': (context) => HomeScreen(),
    },
  ));
}


