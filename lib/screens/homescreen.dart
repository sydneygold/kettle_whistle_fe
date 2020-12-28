import 'package:flutter/material.dart';
import '../widgets/choicescontainer.dart';

class HomeScreen extends StatelessWidget {

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