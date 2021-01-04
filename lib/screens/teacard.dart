import 'package:flutter/material.dart';
import 'package:kettle_whistle_fe/screens/tearecipes.dart';

class TeaCard extends StatefulWidget {
  TeaCard({this.teaDeets}); 

  @override
  _TeaCardState createState() => _TeaCardState();

  final teaDeets;
  
}

class _TeaCardState extends State<TeaCard> {
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
    updateUI(widget.teaDeets);
  }

  void updateUI(dynamic teaDeets){
    image = teaDeets['image'];
    name = teaDeets['name'];
    ingredients = teaDeets['ingredients'];
    tools = teaDeets['tools'];
    temperature = teaDeets['temperature'];
    timer = teaDeets['timer_in_minutes'];
    instructions = teaDeets['instructions'];
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
                context, MaterialPageRoute(builder: (context) => TeaRecipes()));
          }
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Colors.grey[700],
          image: DecorationImage(
          image: AssetImage('images/teacard-background.jpg'),
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