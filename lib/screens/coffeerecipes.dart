import 'package:flutter/material.dart';
import 'package:kettle_whistle_fe/screens/appnavigation.dart';
import 'package:kettle_whistle_fe/screens/coffees/aeropress.dart';
import 'package:kettle_whistle_fe/screens/coffees/chemex.dart';
import 'package:kettle_whistle_fe/screens/coffees/dalgonacard.dart';
import 'package:kettle_whistle_fe/screens/coffees/frenchpress.dart';
import 'package:kettle_whistle_fe/screens/coffees/kalita.dart';
import 'package:kettle_whistle_fe/screens/coffees/siphon.dart';
import 'package:kettle_whistle_fe/screens/coffees/toniccard.dart';
import 'package:kettle_whistle_fe/screens/coffees/vietnamese.dart';

class CoffeeRecipes extends StatefulWidget {
  // CoffeeRecipes({Key key}) : super(key: key);
  CoffeeRecipes({this.coffeeInfo}); 

  final coffeeInfo;

  @override
  _CoffeeRecipesState createState() => _CoffeeRecipesState();
}

class _CoffeeRecipesState extends State<CoffeeRecipes> {

  dynamic dalgona;
  dynamic tonic;
  dynamic vietnamese;
  dynamic frenchpress;
  dynamic aeropress;
  dynamic kalita;
  dynamic chemex;
  dynamic siphon;
  int id;

  @override
  void initState() {
    super.initState();
    updateUI(widget.coffeeInfo);
  }

  void updateUI(dynamic coffeeInfo){
    dalgona = coffeeInfo[0];
    tonic = coffeeInfo[1];
    vietnamese = coffeeInfo[2];
    frenchpress = coffeeInfo[3];
    aeropress = coffeeInfo[4];
    kalita = coffeeInfo[5];
    chemex = coffeeInfo[6];
    siphon = coffeeInfo[7];

  }

  FlatButton buildCoffeeCard(String name, Widget nav) {
    return FlatButton(
      color: Color.fromRGBO(255, 176, 45, 0.6),
      child: ListTile(
        leading: Icon(
          Icons.sports_rugby_outlined,
          color: Colors.brown[900],
          size: 30.0
        ),
        title: Text(
          '$name',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontFamily: 'Josefin Slab',
            fontWeight: FontWeight.w800,
            fontSize: 25.0
          ),
        ),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => nav));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          'Coffee Recipes',
          style: TextStyle(
            fontFamily: 'Dancing Script',
            fontSize: 40.0,
          )
        ),
        leading: FlatButton(
          splashColor: Colors.amberAccent[700],
          child: Icon(
            Icons.free_breakfast,
            color: Colors.orange[50],
            size: 40.0,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AppNav()));
          }
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/coffeebackground.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 550.0,
              width: 400.0,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.all(Radius.circular(5.0))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: buildCoffeeCard('dalgona', DalgonaCard(coffeeDeets: widget.coffeeInfo[0]))
                  ),
                  SizedBox( 
                    height: 5.0,
                    width: double.infinity,
                  ),
                  Container(
                    child: buildCoffeeCard('tonic', TonicCard(coffeeDeets: widget.coffeeInfo[1]))
                  ),
                  SizedBox( 
                    height: 5.0,
                    width: double.infinity,
                  ),
                  Container(
                    child: buildCoffeeCard('vietnamese', VietnameseCard(coffeeDeets: widget.coffeeInfo[2]))
                  ),
                  SizedBox( 
                    height: 5.0,
                    width: double.infinity,
                  ),
                  Container(
                    child: buildCoffeeCard('frenchpress', FrenchPressCard(coffeeDeets: widget.coffeeInfo[3]))
                  ),
                  SizedBox( 
                    height: 5.0,
                    width: double.infinity,
                  ),
                  Container(
                    child: buildCoffeeCard('aeropress', AeroPressCard(coffeeDeets: widget.coffeeInfo[4]))
                ),
                  SizedBox( 
                    height: 5.0,
                    width: double.infinity,
                  ),
                  Container(
                    child: buildCoffeeCard('kalita', KalitaCard(coffeeDeets: widget.coffeeInfo[5]))
                  ),
                  SizedBox( 
                    height: 5.0,
                    width: double.infinity,
                  ),
                  Container(
                    child: buildCoffeeCard('chemex', ChemexCard(coffeeDeets: widget.coffeeInfo[6]))
                  ),
                  SizedBox( 
                    height: 5.0,
                    width: double.infinity,
                  ),
                  Container(
                    child: buildCoffeeCard('siphon', SiphonCard(coffeeDeets: widget.coffeeInfo[7]))
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}