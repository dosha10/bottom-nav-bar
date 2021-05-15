import 'package:flutter/material.dart';
import 'package:jeff_app/home_screen.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  // ignore: unused_field
  int _selectedIndex = 0;
  // ignore: unused_field
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text('Home'),
    Text('Messages'),
    Text('Profile'),
  ];

  // ignore: unused_element
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nav Bar'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            // ignore: deprecated_member_use
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            // ignore: deprecated_member_use
            title: Text('Messages'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            // ignore: deprecated_member_use
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
