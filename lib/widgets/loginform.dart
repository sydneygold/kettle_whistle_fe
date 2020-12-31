import 'package:flutter/material.dart';
import 'package:kettle_whistle_fe/screens/appnavigation.dart';

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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AppNav()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

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
            fontSize: 40,
          )
        ),
        leading: Icon(
          Icons.eco
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
            Container(
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
                  SizedBox(
                    height: 25.0
                  ),
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                    ),
                  ),
                  SizedBox(
                    height: 15.0
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  FlatButton(
                    color: Color.fromRGBO(255, 176, 45, 0.9),
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Josefin Slab',
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AppNav()));
                    }
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}