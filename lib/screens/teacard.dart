import 'package:flutter/material.dart';

class TeaCard extends StatefulWidget {
  TeaCard({Key key}) : super(key: key);

  @override
  _TeaCardState createState() => _TeaCardState();
}

class _TeaCardState extends State<TeaCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      width: 30.0,
      color: Colors.grey
    );
  }
}