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
                image: DecorationImage(
                  image: AssetImage('images/woodbackground.jpg'),
                  fit: BoxFit.cover
                ),
              ),
              child: CircleAvatar(
                child: ClipOval(child: Image.asset('images/strawberry-kettle.jpg')),
              ),
            ),
            Container(
              width: double.infinity,
              height: 343.0,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Colors.black
                ),
                color: Colors.grey[900]
              ),
              child: Column(
                children: [
                  Container(
                    height: 60.0,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Favorites:',
                      style: TextStyle(
                        fontFamily: 'Josefin Slab',
                        fontSize: 40.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),
                    ),
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