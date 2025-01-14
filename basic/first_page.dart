// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // keep track of current page to display
  int _selectedIndex = 0;

  // method to change page index
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages =  [
    // home page
    HomePage(),
    // profile page
    ProfilePage(),
    // settings page
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _pages[_selectedIndex],
      appBar: AppBar(title: Text("First Page"),),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(
            icon : Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon : Icon(Icons.person),
            label: 'Profile'
          ),
          BottomNavigationBarItem(
            icon : Icon(Icons.settings),
            label: 'Settings'
          )
        ],),
    );
  }
}