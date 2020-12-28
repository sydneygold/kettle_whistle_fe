import 'package:flutter/material.dart';
import '../services/networking.dart';

class Tea extends StatefulWidget {
  Tea({Key key}) : super(key: key);
  

  @override
  _TeaState createState() => _TeaState();
}

class _TeaState extends State<Tea> {

    void renderTeas() async {
    NetworkHelper networkHelper = NetworkHelper('https://kettle-whistle-be.herokuapp.com/teas');
    var teaData = await networkHelper.getData();    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}