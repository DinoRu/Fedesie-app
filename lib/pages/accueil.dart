import 'dart:async';

import 'package:flutter/material.dart';

class Accueil extends StatelessWidget {
  Accueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AccueilHome(),
    );
  }
}

class AccueilHome extends StatefulWidget {
  const AccueilHome({super.key});

  @override
  State<AccueilHome> createState() => _AccueilHomeState();
}

class _AccueilHomeState extends State<AccueilHome> {

  List<String> conferences = ['Conference 1', 'Conference 2', 'Conference 3'];
  List<String> activites = ['Activite 1', 'Activite 2', 'Activite 3'];
  List<String> debats = ['Debats 1', 'Debats 2', 'Debats 3'];

  // Liste des annonces
  List<String> annonceImages = [
    'assets/love.png',
    'assets/shopping.png',
    'assets/vision.png',
    'assets/team.png'
  ];

  int currentAnnonceIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startScrollTimer();
  }

  void startScrollTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        currentAnnonceIndex = (currentAnnonceIndex + 1) % annonceImages.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height / 2,
              child: PageView.builder(
                  itemCount: annonceImages.length,
                  itemBuilder: (context, index) {
                    return Image.asset(annonceImages[index], fit: BoxFit.cover,);
                  }
              )
            ),
            // Build section conferences
            buildSection('Conferences', conferences),
            // Section activites
            buildSection('Activites', activites),
            // Section debats
            buildSection('Debats', debats),
          ],
        ),
      ),
    );
  }

  Widget buildSection(String title, List<String> items ) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),
        Container(
          height: MediaQuery.of(context).size.height / 4,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: (items.length / 2).ceil(),
            itemBuilder: (context, index) {
              int startIndex = index * 2;
              int endIndex = startIndex + 2;
              if( endIndex > items.length) {
                endIndex = items.length;
              }

              List<String> currentRow = items.sublist(startIndex, endIndex);
              return Row(
                children: items.map((item) {
                  return Card(
                    child: Text(item),
                  );
                }).toList(),
              );
            }),
        )
      ],
    );
  }
}

// widget pour creer des section



