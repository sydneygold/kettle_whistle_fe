import 'package:flutter/material.dart';

class TeaCard extends StatefulWidget {
  TeaCard({this.teaDeets}); 

  @override
  _TeaCardState createState() => _TeaCardState();

  final teaDeets;
}

class _TeaCardState extends State<TeaCard> {

  @override
  void initState() {
    super.initState();
    // print(widget.teaInfo[0]);
    updateUI(widget.teaDeets);
  }

  void updateUI(dynamic teaDeets){
    print(teaDeets);
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      width: 30.0,
      color: Colors.grey
    );
  }
}