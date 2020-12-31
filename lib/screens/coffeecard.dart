import 'package:flutter/material.dart';
import 'package:kettle_whistle_fe/screens/coffeerecipes.dart';

class CoffeeCard extends StatefulWidget {
  CoffeeCard({this.coffeeDeets}); 

  @override
  _CoffeeCardState createState() => _CoffeeCardState();

  final coffeeDeets;
  
}

class _CoffeeCardState extends State<CoffeeCard> {
  String image;
  String name;
  String ingredients;
  String tools;
  String temperature;
  int timer;
  String instructions;

  @override
  void initState() {
    super.initState();
    updateUI(widget.coffeeDeets);
  }

  void updateUI(dynamic coffeeDeets){
    image = coffeeDeets['image'];
    name = coffeeDeets['name'];
    ingredients = coffeeDeets['ingredients'];
    tools = coffeeDeets['tools'];
    temperature = coffeeDeets['temperature'];
    timer = coffeeDeets['timer_in_minutes'];
    instructions = coffeeDeets['instructions'];
    print(coffeeDeets);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text('$name',
            style: TextStyle(
              fontFamily: 'Dancing Script',
              fontSize: 40.0,
            )),
        leading: FlatButton(
          splashColor: Colors.lightGreen[300],
          child: Icon(
            Icons.emoji_food_beverage,
            color: Colors.lightGreen[300],
            size: 40.0,
          ),
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => CoffeeRecipes()));
          }
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Colors.grey[700],
          image: DecorationImage(
          image: AssetImage('images/beans.jpg'),
          fit: BoxFit.cover
          ),
        ),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 300.0,
                child: Image(
                  image: NetworkImage('$image')
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(9,3,0, 0.8),
                borderRadius: BorderRadius.circular(10.0)
              ),
              height: 290.0,
              width: 400.0,
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    child: Text(
                      'Tools: $tools',
                      style: TextStyle(
                        fontFamily: 'Josefin Slab',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    child: Text(
                      'Temperature: $temperature',
                      style: TextStyle(
                        fontFamily: 'Josefin Slab',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    child: Text(
                      'Ingredients: $ingredients',
                      style: TextStyle(
                        fontFamily: 'Josefin Slab',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    child: Text(
                      'Timer: $timer',
                      style: TextStyle(
                        fontFamily: 'Josefin Slab',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    child: Text(
                      'Instructions: $instructions',
                      style: TextStyle(
                        fontFamily: 'Josefin Slab',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                      )
                    )
                  ),
                ],
              )
            ),
          ]
        ),
      ),
    );
  }
}