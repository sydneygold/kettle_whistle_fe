import 'package:flutter/material.dart';
import 'package:kettle_whistle_fe/screens/coffeerecipes.dart';

class DalgonaCard extends StatefulWidget {
  DalgonaCard({this.coffeeDeets}); 

  @override
  _DalgonaCardState createState() => _DalgonaCardState();

  final coffeeDeets;
}

class _DalgonaCardState extends State<DalgonaCard> {

  @override
  void initState() {
    super.initState();
    updateUI(widget.coffeeDeets);
  }

  void updateUI(dynamic coffeeDeets){
    print(coffeeDeets);
  }
  
  Container showCardData(){
    return Container(
      color: Colors.black54,
      height: 600.0,
      width: 400.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          'Go Back?',
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
              child: showCardData()
            ),
          ],
        )
      ),
    );
  }
}