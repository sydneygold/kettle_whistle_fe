import 'package:flutter/material.dart';
import 'package:kettle_whistle_fe/screens/tearecipes.dart';
import '../services/networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class TeaLoadingScreen extends StatefulWidget {

  @override
  _TeaLoadingScreenState createState() => _TeaLoadingScreenState();
}

class _TeaLoadingScreenState extends State<TeaLoadingScreen> {

  void initState(){
    super.initState();
    renderTeas();
  }

  void renderTeas() async {
    NetworkHelper networkHelper = NetworkHelper('https://kettle-whistle-be.herokuapp.com/teas');
    var teaData = await networkHelper.getData();
    
    Navigator.push(context, MaterialPageRoute(builder: (context) => TeaRecipes(teaInfo: teaData,)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/loadingscreen.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: SpinKitRing( 
            color: Colors.white,
            size: 100.0,
          ),
        ),
      ),
    );
  }
}