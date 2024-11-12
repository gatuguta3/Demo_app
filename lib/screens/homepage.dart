import 'dart:io';

import 'package:demo_app/screens/discover_screen.dart';
import 'package:demo_app/screens/home_screen.dart';
import 'package:demo_app/screens/payment_page_screen.dart';
import 'package:demo_app/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int _currentIndex = 0;
  final screens=[
    const Home(),
    const  Discover(),
    const PaymentPage(),
    const Profile()

  ];


Future<bool> _onWillPop() async {    
    return await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Exit App'),
            content: Text('Do you really want to exit the app?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false), 
                child: Text('No'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true); 
                  exit(0); 
                },
                child: Text('Yes'),
              ),
            ],
          ),
        ) ??
        false; 
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(

         body: screens[_currentIndex],
bottomNavigationBar: BottomNavigationBar(
  backgroundColor: const Color.fromARGB(255, 253, 252, 253),
  selectedItemColor: Colors.orange,
  unselectedItemColor: const Color.fromRGBO(158, 158, 158, 1),
  type: BottomNavigationBarType.fixed,
  currentIndex: _currentIndex,
  onTap: (index) => setState(() => _currentIndex = index),
  items: [
    BottomNavigationBarItem(
      icon: const Icon(Icons.home_outlined),
      label: _currentIndex == 0 ? 'Home' : '',
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.directions),
      label: _currentIndex == 1 ? 'Discover' : '',
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.wallet),
      label: _currentIndex == 2 ? 'wallet' : '',
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.person_2_outlined),
      label: _currentIndex == 3 ? 'Profile' : '',
    ),
  ],
),
        
      )
    );
  }
}
