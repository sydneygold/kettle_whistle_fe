import 'package:flutter/material.dart';
import 'pages/loginscreen.dart';
import 'pages/homescreen.dart';
import 'pages/splashscreen.dart';
import 'pages/profilescreen.dart';
import 'pages/appnavigation.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => SplashScreen(),
      '/login': (context) => LoginScreen(),
      '/nav': (context) => AppNav(),
      '/home': (context) => HomeScreen(),
      '/profile': (context) => ProfileScreen(),
    },
  ));
}


