import 'package:flutter/material.dart';
import 'package:kettle_whistle_fe/screens/appnavigation.dart';
import 'package:kettle_whistle_fe/screens/teacard.dart';

class TeaRecipes extends StatefulWidget {
  TeaRecipes({this.teaInfo});

  final teaInfo;

  @override
  _TeaRecipesState createState() => _TeaRecipesState();
}

class _TeaRecipesState extends State<TeaRecipes> {
  
  String black;
  String green;
  String herbal;
  String oolong;
  String white;
  String puerh;
  String matcha;
  String chai;

  @override
  void initState() {
    super.initState();
    print(widget.teaInfo);
    updateUI(widget.teaInfo);
  }

  void updateUI(dynamic teaInfo){
    black = teaInfo[0]['name'];
    green = teaInfo[1]['name'];
    herbal = teaInfo[2]['name'];
    oolong = teaInfo[3]['name'];
    white = teaInfo[4]['name'];
    puerh = teaInfo[5]['name'];
    matcha = teaInfo[6]['name'];
    chai = teaInfo[7]['name'];
    
  }

  @override
  Widget build(BuildContext context) {

  FlatButton buildTeaCard(String name) {
    return FlatButton(
      color: Color.fromRGBO(0, 153, 180, 0.7),
      child: ListTile(
        leading: Icon(
          Icons.eco_sharp,
          color: Colors.lightGreen[300],
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
        Navigator.push(context, MaterialPageRoute(builder: (context) => TeaCard()));
      },
    );
  }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          'Tea Recipes',
          style: TextStyle(
            fontFamily: 'Dancing Script',
            fontSize: 40.0,
          )
        ),
        leading: FlatButton(
          splashColor: Colors.lightGreen[300],
          child: Icon(
            Icons.emoji_food_beverage,
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
            image: AssetImage('images/teaglass.jpg'),
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
                    child: buildTeaCard(black)
                  ),
                  SizedBox( 
                    height: 5.0,
                    width: double.infinity,
                  ),
                  Container(
                    child: buildTeaCard(green)
                  ),
                  SizedBox( 
                    height: 5.0,
                    width: double.infinity,
                  ),
                  Container(
                    child: buildTeaCard(herbal)
                  ),
                  SizedBox( 
                    height: 5.0,
                    width: double.infinity,
                  ),
                  Container(
                    child: buildTeaCard(oolong)
                  ),
                  SizedBox( 
                    height: 5.0,
                    width: double.infinity,
                  ),
                  Container(
                    child: buildTeaCard(white)
                  ),
                  SizedBox( 
                    height: 5.0,
                    width: double.infinity,
                  ),
                  Container(
                    child: buildTeaCard(puerh)
                  ),
                  SizedBox( 
                    height: 5.0,
                    width: double.infinity,
                  ),
                  Container(
                    child: buildTeaCard(matcha)
                  ),
                  SizedBox( 
                    height: 5.0,
                    width: double.infinity,
                  ),
                  Container(
                    child: buildTeaCard(chai)
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

