import 'package:flutter/material.dart';
import 'package:kettle_whistle_fe/screens/coffeerecipes.dart';

class VietnameseCard extends StatefulWidget {
  VietnameseCard({this.coffeeDeets}); 

  @override
  _VietnameseCardState createState() => _VietnameseCardState();

  final coffeeDeets;
}

class _VietnameseCardState extends State<VietnameseCard> {
  String name;
  String image;
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
    print(coffeeDeets);
    name = coffeeDeets['name'];
    image = coffeeDeets['image'];
    ingredients = coffeeDeets['ingredients'];
    tools = coffeeDeets['tools'];
    temperature = coffeeDeets['temperature'];
    timer = coffeeDeets['timer_in_minutes'];
    instructions = coffeeDeets['instructions'];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          '$name',
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
            Navigator.pop(context, MaterialPageRoute(builder: (context) => CoffeeRecipes()));
          }
        ),
      ),
      body: Container( 
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration( 
          image: DecorationImage(
            image: AssetImage('images/beans.jpg'),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              color: Colors.black54,
              height: 600.0,
              width: 400.0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 320.0,
                        width: 200.0,
                        margin: EdgeInsets.all( 8.0),
                        decoration:  BoxDecoration(
                          image: DecorationImage(
                          image: NetworkImage('$image'),
                          fit: BoxFit.cover
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only( top: 10.0, right: 10.0, bottom: 10.0),
                        height: 320.0,
                        width: 174.0,
                        color: Colors.black54,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 5.0, left: 14.0),
                                  child: Text(
                                    'Tools:',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Josefin Slab',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600
                                    )
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 160.0,
                                  margin: EdgeInsets.all(3.0),
                                  child: Text(
                                    '$tools',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Josefin Slab',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600
                                    )
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 14.0),
                                  child: Text(
                                    'Temp:',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Josefin Slab',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600
                                    )
                                  ),
                                ),
                                Container(
                                  width: 90.0,
                                  height: 20.0,
                                  margin: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    '$temperature',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Josefin Slab',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600
                                    )
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 14.0, bottom: 15.0, right: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Timer: $timer min',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Josefin Slab',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600
                                    )
                                  ),
                                  Container(
                                    width: 10.0,
                                    child: IconButton(
                                      color: Colors.blueGrey[900],
                                      iconSize: 20.0,
                                      icon: Icon(
                                        Icons.timer,
                                        color: Colors.lightBlue,
                                      ),
                                      onPressed: null
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 255.0,
                    width: 500.0,
                    color: Colors.black54,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
                          height: 100.0,
                          child: Text(
                            'Ingredients: $ingredients',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Josefin Slab',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600
                            )
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}