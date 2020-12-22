import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(0, 0, 0, 0.8),
      height: 300.0,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
            child: Text(
              'Welcome!',
              style: TextStyle(
                fontFamily: 'Josefin Slab',
                fontSize: 35.0,
                color: Colors.white,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          SizedBox(
            width: 350.0,
            child: Divider(
              color: Colors.white60,
              thickness: 2.0,
            ),
          ),
          SizedBox(
            width: 300.0,
            child: Divider(
              color: Colors.white60,
              thickness: 2.0,
            ),
          ),
          Card(
            color: Colors.white54,
          )
        ],
      ),
    );
  }
}