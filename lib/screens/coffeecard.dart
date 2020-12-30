import 'package:flutter/material.dart';

class CoffeeCard extends StatefulWidget {
  CoffeeCard({this.coffeeDeets}); 

  @override
  _CoffeeCardState createState() => _CoffeeCardState();

  final coffeeDeets;
}

class _CoffeeCardState extends State<CoffeeCard> {

  @override
  void initState() {
    super.initState();
    print(widget.coffeeDeets);
    updateUI(widget.coffeeDeets);
  }

  void updateUI(dynamic coffeeDeets){
    print(widget.coffeeDeets);
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      width: 30.0,
      color: Colors.grey
    );
  }
}