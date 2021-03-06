import 'package:flutter/material.dart';
import 'package:kettle_whistle_fe/screens/loginscreen.dart';
import '../widgets/choicescontainer.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          'Kettle Whistle',
          style: TextStyle(
            fontFamily: 'Dancing Script',
            fontSize: 40.0,
          )
        ),
        leading: FlatButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          child: Icon(
            Icons.logout,
            color: Colors.white
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250.0,
              decoration: BoxDecoration(
                color: Colors.grey[700],
                image: DecorationImage(
                  image: AssetImage('images/concrete.png'),
                  fit: BoxFit.cover
                )
              ),
            ),
            ChoicesContainer(),
          ],
        ),
      ),
    );
  }
}
