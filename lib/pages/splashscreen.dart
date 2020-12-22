import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/kettleSplashScreen.jpg'),
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
            Navigator.pushNamed(context, '/login');
          },
        ),
      ),
    );
  }
}

