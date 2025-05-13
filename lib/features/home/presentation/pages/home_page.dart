import 'package:flutter/material.dart';
import 'package:sample/features/characters/presentation/pages/characters_page.dart';
import 'package:sample/features/favourite/presentation/pages/favorite_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    CharactersPage(),
    FavoritePage(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontSize: 14, color: Colors.black),
        unselectedLabelStyle: TextStyle(fontSize: 14, color: Colors.black),
        onTap: (value) => setState(() => _currentIndex = value),
        items: [
          BottomNavigationBarItem(
            label: "Characters",
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: "Favorites",
            icon: Icon(
              Icons.favorite,
            ),
          )
        ],
      ),
      body: pages[_currentIndex],
    );
  }
}
