import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gift/core/constants/palette.dart';

import '../../features/home/presentation/home_page.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({Key? key}) : super(key: key);

  @override
  State<MainWrapper> createState() => _MainWrapper();
}

class _MainWrapper extends State<MainWrapper> {
  var _selectedIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    // Screen 2 widget
    // Screen 3 widget
    // Screen 4 widget
  ];

  final List<BottomNavigationBarItem> _items = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.people),
      label: 'Friends',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.event),
      label: 'My events',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.add_circle),
      label: 'New event',
    ),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ---------------------appBar---------------------
      appBar: AppBar(
        shape: const Border(
            bottom: BorderSide(
          color: Palette.pureBlack,
          width: 1,
        )),
        leading: Container(
          child: const Center(
            child: Text(
              'Home',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Palette.primaryColor),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage()));
            },
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        type: BottomNavigationBarType.shifting,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
