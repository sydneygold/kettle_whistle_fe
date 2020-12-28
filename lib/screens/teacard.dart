import 'package:flutter/material.dart';

class TeaCard extends StatefulWidget {
  TeaCard({this.teaInfo}); 

  @override
  _TeaCardState createState() => _TeaCardState();

  final teaInfo;
}

class _TeaCardState extends State<TeaCard> {

  @override
  void initState() {
    super.initState();
    // print(widget.teaInfo[0]);
    updateUI(widget.teaInfo);
  }

  void updateUI(dynamic teaInfo){
    print(teaInfo);
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