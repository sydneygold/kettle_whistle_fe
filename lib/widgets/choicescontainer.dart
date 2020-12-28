import 'package:flutter/material.dart';
import 'package:kettle_whistle_fe/loadingscreens/coffeeloadingscreen.dart';
import 'package:kettle_whistle_fe/loadingscreens/tealoadingscreen.dart';
import 'package:kettle_whistle_fe/screens/coffeerecipes.dart';
import 'package:kettle_whistle_fe/screens/nerdyinfo.dart';

class ChoicesContainer extends StatelessWidget {
  const ChoicesContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.only(top: 50.0, bottom: 10.0),
            color: Color.fromRGBO(255, 176, 45, 0.7),
            child: ListTile(
                title: Text(
                  'Tea Recipes',
                  style: TextStyle(
                    fontFamily: 'Josefin Slab',
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  )
                ),
                leading: Icon(
                  Icons.emoji_food_beverage,
                  size: 30.0,
                ),
                trailing: FlatButton(
                child: Icon(
                  Icons.fast_forward_outlined,
                  size: 30.0,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TeaLoadingScreen()));
                },
              ),
            )
          ),
          Card(
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            color: Color.fromRGBO(255, 143, 5, 0.7),
            child: ListTile(
                title: Text(
                  'Coffee Recipes',
                  style: TextStyle(
                    fontFamily: 'Josefin Slab',
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  )
                ),
                leading: Icon(
                  Icons.local_cafe,
                  size: 30.0,
                ),
                trailing: FlatButton(
                child: Icon(
                  Icons.fast_forward_outlined,
                  size: 30.0,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CoffeeLoadingScreen()));
                },
              ),
            )
          ),
          Card(
            margin: EdgeInsets.only(top: 10.0, bottom: 35.0),
            color: Color.fromRGBO(200, 105, 10, 0.7),
            child: ListTile(
                title: Text(
                  'Nerdy Knowledge',
                  style: TextStyle(
                    fontFamily: 'Josefin Slab',
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  )
                ),
                leading: Icon(
                  Icons.psychology,
                  size: 35.0,
                ),
                trailing: FlatButton(
                  child: Icon(
                    Icons.fast_forward_outlined,
                    size: 30.0,
                  ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NerdyInfo()));
                },
              ),
            )
          )
        ],
      ),
    );
  }
}