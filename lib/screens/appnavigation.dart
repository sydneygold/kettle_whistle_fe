import 'package:flutter/material.dart';
import 'package:kettle_whistle_fe/screens/nerdyinfo.dart';
import 'homescreen.dart';

List<Widget> _myPages = [HomeScreen(), NerdyInfo()];

class AppNav extends StatefulWidget {
  AppNav({Key key}) : super(key: key);

  @override
  _AppNavState createState() => _AppNavState();
}

class _AppNavState extends State<AppNav> {

  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _myPages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey[900],
        iconSize: 30.0,
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.free_breakfast, color: Colors.amber),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.psychology, color: Colors.amber),
            label: ''
          ),
        ],
      ),
    );
  }
}