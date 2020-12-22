import 'package:flutter/material.dart';
import 'widgets/loginform.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          'Kettle Whistle',
          style: TextStyle(
            fontFamily: 'Dancing Script',
            fontWeight: FontWeight.w500,
            fontSize: 35,
          )
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/portafilter.png'),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LoginForm(),
          ],
        ),
      ),
    );
  }
}