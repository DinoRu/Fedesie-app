import 'package:fedesie_app/pages/accueil.dart';
import 'package:fedesie_app/pages/homepage.dart';
import 'package:fedesie_app/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FEDISIE',
      home: Scaffold(
        body: HomePage(),

      ),
      routes: {
        "mainpage": (context) => MainPage(),
      },
    );

  }
}