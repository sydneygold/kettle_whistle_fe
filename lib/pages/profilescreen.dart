import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
        leading: Icon(
          Icons.eco
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200.0,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 8.0,
                  color: Colors.grey
                )
              ),
              child: CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: 20.0,
              ),
            ),
            Container(
              width: double.infinity,
              height: 343.0,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 8.0,
                  color: Colors.grey
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 60.0,
                    child: Text('Favorites:')
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}