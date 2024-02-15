import 'package:fedesie_app/pages/annonce_page.dart';
import 'package:fedesie_app/pages/community_page.dart';
import 'package:fedesie_app/pages/contact_page.dart';
import 'package:fedesie_app/pages/profile_page.dart';
import 'package:flutter/material.dart';

import 'accueil.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages = [
    Accueil(),
    ContactPage(),
    AnnoncePage(),
    CommunityPage(),
    ProfilePage(),
  ];

  int currentIndex = 0;

  void onTap ( int index ) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Contacts'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Annonces"),
          BottomNavigationBarItem(icon: Icon(Icons.location_city_outlined), label: 'Community'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
      ),
    );
  }
}
