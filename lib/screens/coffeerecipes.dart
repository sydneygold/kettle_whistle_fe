import 'package:flutter/material.dart';
import 'package:kettle_whistle_fe/screens/appnavigation.dart';

class CoffeeRecipes extends StatefulWidget {
  // CoffeeRecipes({Key key}) : super(key: key);
  CoffeeRecipes({this.coffeeInfo}); 

  final coffeeInfo;

  @override
  _CoffeeRecipesState createState() => _CoffeeRecipesState();
}

class _CoffeeRecipesState extends State<CoffeeRecipes> {

  @override
  void initState() {
    super.initState();

    print(widget.coffeeInfo);
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
          splashColor: Colors.lightGreen[300],
          child: Icon(
            Icons.free_breakfast,
            color: Colors.lightGreen[300],
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}