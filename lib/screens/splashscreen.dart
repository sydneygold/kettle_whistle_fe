import 'package:flutter/material.dart';
import 'package:kettle_whistle_fe/screens/loginscreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/splashscreen.png'),
            fit: BoxFit.cover
        ) ,
      ),
      child: Center(
        child: FlatButton(
          color: Color.fromRGBO(150, 114, 98, 0.0),
          child: Icon(
            Icons.favorite_border_outlined,
            color: Colors.white54,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
          },
        ),
      ),
    );
  }
}

