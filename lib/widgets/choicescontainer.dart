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
      height: 293.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[900],
          width: 15.0,
          style: BorderStyle.solid
        ),
        color: Colors.grey[900],
        image: DecorationImage(
          image: AssetImage(
            'images/grey-texture.jpg',
          ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.grey[850],
            BlendMode.overlay
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            margin: EdgeInsets.only(top: 25.0, bottom: 10.0),
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
        ],
      ),
    );
  }
}