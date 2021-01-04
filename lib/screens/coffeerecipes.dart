import 'package:flutter/material.dart';
import 'package:kettle_whistle_fe/screens/appnavigation.dart';
import 'package:kettle_whistle_fe/screens/coffeecard.dart';

class CoffeeRecipes extends StatefulWidget {
  CoffeeRecipes({this.coffeeInfo});

  final coffeeInfo;

  @override
  _CoffeeRecipesState createState() => _CoffeeRecipesState();
}

class _CoffeeRecipesState extends State<CoffeeRecipes> {
  @override
  void initState() {
    super.initState();
  }

  Card makeCards(dynamic coffeeType, String name,) {
    return Card(
      color: Colors.white60,
      child: Row(children: [
        FlatButton(
            onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CoffeeCard(coffeeDeets: coffeeType)),
                ),
            child: Icon(
              Icons.free_breakfast,
              size: 35.0,
              color: Colors.brown[900]
            )
        ),
        Text(name, 
          style: TextStyle(
            fontFamily: 'Josefin Slab',
            fontSize: 25.0,
            fontWeight: FontWeight.bold
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text('Coffee Recipes',
            style: TextStyle(
              fontFamily: 'Dancing Script',
              fontSize: 40.0,
            )),
        leading: FlatButton(
            splashColor: Colors.orange[200],
            child: Icon(
              Icons.skip_previous,
              color: Colors.orange[100],
              size: 40.0,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AppNav()));
            }),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/coffeebackground.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 550.0,
              width: 400.0,
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  makeCards(widget.coffeeInfo[0], 'Dalgona'),
                  makeCards(widget.coffeeInfo[1], 'Espresso Tonic'),
                  makeCards(widget.coffeeInfo[2], 'Vietnamese Egg Coffee'),
                  makeCards(widget.coffeeInfo[3], 'French Press'),
                  makeCards(widget.coffeeInfo[4], 'AeroPress'),
                  makeCards(widget.coffeeInfo[5], 'Kalita'),
                  makeCards(widget.coffeeInfo[6], 'Chemex'),
                  makeCards(widget.coffeeInfo[7], 'Siphon'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
