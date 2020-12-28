import 'package:flutter/material.dart';
import 'package:kettle_whistle_fe/screens/coffeerecipes.dart';
import '../services/networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class CoffeeLoadingScreen extends StatefulWidget {

  @override
  _CoffeeLoadingScreenState createState() => _CoffeeLoadingScreenState();
}

class _CoffeeLoadingScreenState extends State<CoffeeLoadingScreen> {

  void initState(){
    super.initState();
    renderCoffees();
  }

  void renderCoffees() async {
    NetworkHelper networkHelper = NetworkHelper('https://kettle-whistle-be.herokuapp.com/coffees');
    var coffeeData = await networkHelper.getData();
    
    Navigator.push(context, MaterialPageRoute(builder: (context) => CoffeeRecipes(coffeeInfo: coffeeData,)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/newloadingscreen.jpg'),
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