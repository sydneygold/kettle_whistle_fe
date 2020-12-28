import 'package:flutter/material.dart';
import '../services/networking.dart';

class Coffee {

  Map dalgona;
  Map tonic;
  Map vietnamese;
  Map frenchpress;
  Map aeropress;
  Map kalita;
  Map chemex;
  Map siphon;

  void renderCoffees() async {
    NetworkHelper networkHelper = NetworkHelper('https://kettle-whistle-be.herokuapp.com/coffees');
    var coffeeData = await networkHelper.getData();    

    dalgona = coffeeData[0];
    tonic = coffeeData[1];
    vietnamese = coffeeData[2];
    frenchpress = coffeeData[3];
    aeropress = coffeeData[4];
    kalita = coffeeData[5];
    chemex = coffeeData[6];
    siphon = coffeeData[7];


  }
}