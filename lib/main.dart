
import 'package:coffeeapp/views/CoffeeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(RootScreen());
}

class RootScreen extends StatefulWidget{

  const RootScreen({super.key});

  @override
  State<StatefulWidget> createState() =>_RootScreenState();

}

class _RootScreenState extends State<RootScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    CoffeeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: "testing app",
      home: Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.other_houses),
          label: 'home',
        ),
      BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
  label: 'favorite',
  ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'menu',
        ),
  ],
  currentIndex: _selectedIndex,
  onTap: _onItemTapped,
      ),
    )
  );
  }
  }
