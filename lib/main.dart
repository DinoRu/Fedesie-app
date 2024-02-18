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
      darkTheme: ThemeData(
        primarySwatch: Colors.blueGrey,
        backgroundColor: Colors.black,
        colorScheme: ColorScheme.dark(
          primary: Colors.grey[800]!,
          surface: Colors.black,
          background: Colors.black,
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.white,
        )
      ),
      themeMode: ThemeMode.system,
      home: Scaffold(
        body: HomePage(),

      ),
      routes: {
        "mainpage": (context) => MainPage(),
      },
    );

  }
}