import 'package:flutter/material.dart';
import 'profilescreen.dart';
import 'homescreen.dart';

List<Widget> _myPages = [HomeScreen(), ProfileScreen()];

class AppNav extends StatefulWidget {
  AppNav({Key key}) : super(key: key);

  @override
  _AppNavState createState() => _AppNavState();
}

class _AppNavState extends State<AppNav> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _myPages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey[900],
        iconSize: 30.0,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.free_breakfast, color: Colors.amber),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, color: Colors.amber),
            label: ''
          ),
        ],
      ),
    );
  }
}