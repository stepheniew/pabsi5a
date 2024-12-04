import 'package:flutter/material.dart';
import 'package:flutter_navbutton_grid/screens/favorite_screen.dart';
import 'package:flutter_navbutton_grid/screens/home_screen.dart';
import 'package:flutter_navbutton_grid/screens/profile_screen.dart';
import 'package:flutter_navbutton_grid/screens/search_screen.dart';

class MainScreeen extends StatefulWidget {
  const MainScreeen({super.key});

  @override
  State<MainScreeen> createState() => _MainScreeenState();
}

class _MainScreeenState extends State<MainScreeen> {
  int _selectedIndex = 0;

  static const List<Widget> _screenOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    ProfileScreen(),
    FavoriteScreen()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search',),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorite',),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile',),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.deepPurple.shade200,
      ),
    );
  }
}
