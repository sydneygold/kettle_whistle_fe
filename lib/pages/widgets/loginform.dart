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
            width: 375.0,
            height: 3.0,
            child: Divider(
              color: Colors.white60,
              thickness: 2.0,
            ),
          ),
          SizedBox(
            width: 350.0,
            height: 10.0,
            child: Divider(
              color: Colors.white60,
              thickness: 2.0,
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 55.0, bottom: 10.0),
            color: Color.fromRGBO(255, 176, 45, 0.7),
            child: ListTile(
              title: Text(
                'Login:',
                style: TextStyle(
                  fontFamily: 'Josefin Slab',
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                )
              ),
              leading: Icon(
                Icons.eco
              ),
              trailing: FlatButton(
                child: Icon(
                  Icons.fast_forward_outlined
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/nav');
                },
              ),
            )
          ),
          Card(
            margin: EdgeInsets.only(top: 5.0, bottom: 10.0),
            color: Color.fromRGBO(255, 176, 45, 0.7),
            child: ListTile(
              title: Text(
                'Signup:',
                style: TextStyle(
                  fontFamily: 'Josefin Slab',
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              leading: Icon(
                Icons.local_cafe
              ),
              trailing: FlatButton(
                child: Icon(
                  Icons.fast_forward_outlined
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/nav');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}