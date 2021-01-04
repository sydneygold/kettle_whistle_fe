import 'package:flutter/material.dart';
import 'package:kettle_whistle_fe/screens/homescreen.dart';

class NerdyInfo extends StatefulWidget {
  NerdyInfo({Key key}) : super(key: key);

  @override
  _NerdyInfoState createState() => _NerdyInfoState();
}

class _NerdyInfoState extends State<NerdyInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/portafilter.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.0, bottom: 100.0),
            child: Column(
              children: [
                Text(
                  'Coming Soon...',
                  style: TextStyle(
                    fontFamily: 'Josefin Slab',
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700
                  )
                ),
                FlatButton(
                  color: Color.fromRGBO(0, 0, 0, 0.0),
                  child: Icon(
                    Icons.subdirectory_arrow_left,
                    color: Colors.white,
                    size: 30.0
                  ),
                  onPressed: () {
                    Navigator.pop(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                )
              ],
            )
          ),
        ],
      )
    );
  }
}