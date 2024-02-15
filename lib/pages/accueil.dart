import 'dart:async';

import 'package:fedesie_app/models/itemLists.dart';
import 'package:fedesie_app/models/postsList.dart';
// import 'package:fedesie_app/pages/homepage.dart';
import 'package:fedesie_app/pages/profile_page.dart';
import 'package:fedesie_app/utils/cards.dart';
// import 'package:fedesie_app/widgets/big_text.dart';
import 'package:fedesie_app/widgets/card_item.dart';
// import 'package:fedesie_app/widgets/postlistwidget.dart';
import 'package:flutter/material.dart';
import '../widgets/card_recent.dart';
import 'annonce_page.dart';
import 'contact_page.dart';
import 'detailpage.dart';

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

  List pages = [
    Accueil(),
    ContactPage(),
    AnnoncePage(),
    ProfilePage(),
  ];

  List<Item> conferences = [
    Item(
      id: 1,
      title: "Tous savoir sur le cancer de la prostate",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna",
      image: "assets/images/conference-1.jpg",
      url: 'https://www.youtube.com/watch?v=jDDaplaOz7Q',
      createdAt: DateTime(2024-03-13)
    ),
    Item(
      id: 2,
      title: "L'importance de connaitre son groupe sanguin",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna",
      url: 'https://www.youtube.com/watch?v=jDDaplaOz',
      image: "assets/images/conference-1.jpg",
      createdAt: DateTime(2024-02-13)
    ),

    Item(
        id: 3,
        title: "Comment eviter de se faire hacker",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna",
        url: 'https://www.youtube.com/watch?v=jDDaplaOz',
        image: "assets/images/conference-1.jpg",
        createdAt: DateTime(2024-05-13)
    ),

    Item(
        id: 4,
        title: "Comment obtenir le stauts de residence en Russie",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna",
        url: 'https://www.youtube.com/watch?v=jDDaplaOz',
        image: "assets/images/conference-1.jpg",
        createdAt: DateTime(2024-01-30)
    ),
  ];
  List<Item> activites = [
    Item(
      id: 1,
      title: 'Nuit des Starts',
      description: 'La nuit des starts est un evenement '
          'qui a pour objectif de promouvoir '
          'la musique et le style, les animations',
      image: 'assets/images/nuit_des_starts.jpg',
      url: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      createdAt: DateTime(2024-05-02),
    ),
    Item(
      id: 2,
      title: 'Le festival de grillade',
      description: 'L est un evenement cullinaire organisé dans le but de promouvoir la cusine et de rassembler nos differentes communautés autour d une table bien garnie',
      image: 'assets/images/nuit_des_starts.jpg',
      url: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      createdAt: DateTime(2024-06-30),
    ),

    Item(
      id: 2,
      title: 'Miss de Universal',
      description: 'L est un evenement organisé dans le but de promouvoir la culture et de rassembler nos differentes communautés autour d une table bien garnie',
      image: 'assets/images/nuit_des_starts.jpg',
      url: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      createdAt: DateTime(2024-06-30),
    ),
    Item(
      id: 2,
      title: 'Fete de nouvel Ans',
      description: 'L est un evenement organisé dans le but de celebrer et de rassembler nos differentes communautés autour d une table bien garnie',
      image: 'assets/images/nouvel-an.jpeg',
      url: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      createdAt: DateTime(2024-06-30),
    ),
  ];
  List<Item> debats = [
      Item(
          id: 1,
          title: "Débat sur l'environnement",
          image: 'assets/images/debat-1.jpeg',
          url: 'https://www.youtube.youtube/evironment',
          description: "Discussion sur les problèmes environnementaux actuels",
          createdAt: DateTime(2024-04-02)
      ),

      Item(id: 2, title: 'Debat politique',
          image: 'assets/images/debat-2.jpeg',
          url: 'thtps://www.youtube.youtube/debat_politique/',
          description: 'Analyse des enjeux politiques contemporains"',
          createdAt: DateTime(2024-02-20)
      ),

      Item(
          id: 3,
          title: "Debat sur l'education",
          image: 'assets/images/debat-3.jpeg',
          url: 'https://www.youtube.youtube/education',
          description: "Réflexion sur les défis du système éducatif",
          createdAt: DateTime(2024-03-10)
      ),

      Item(
          id: 4,
          title: 'Debat sur social',
          image: 'assets/images/debat_4.jpg',
          url: 'https://www.youtube.youtube/social',
          description: "Discussion sur les problèmes sociaux de notre société",
          createdAt: DateTime(2024-04-10)
      )
  ];

  // Liste des annonces
  List<String> annonceImages = [
    'assets/images/nouvel-an.jpeg',
    'assets/images/debat-1.jpeg',
    'assets/love.png',
    'assets/shopping.png',
    'assets/vision.png',
    'assets/team.png'
  ];

  List<Post> posts = [
    Post(
        title: "Demande d'aide financiere",
        description: "Dignissimos distinctio sint recusandae. Sequi possimus molestias repudiandae quas. Adipisci ea quo voluptate cumque saepe maxime omnis. Magnam aut earum pariatur quod quis consectetur. Itaque possimus deleniti ad tempore rem in ab. Minus ipsa quis.",
        author: 'Mr Ephraim',
        imageUrl: "assets/images/nuit_des_starts.jpg",)
  ];

  int currentAnnonceIndex = 0;
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // backgroundColor: Colors.grey.withOpacity(0.2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text('Lundi, 12/02/2024', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: PageView.builder(
                    itemCount: annonceImages.length,
                    itemBuilder: (context, index) {
                      return MyCard(imageUrl: annonceImages[index]);
                    }
                )
              ),
              const SizedBox(height: 50,),
              // build lists of recents posts
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text("Dernieres infos", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
              ),
              SizedBox(height: 15),
              //
              RCard(title: 'Demande d aide financieres', thumbnail: 'assets/images/debat-1.jpeg', time: '30min'),
              SizedBox(height:5),
              RCard(title: 'Passport disponible', thumbnail: "assets/images/photo_fedesie_annonce.jpg", time: 'Il y 10min'),
              SizedBox(height: 20),
              // Build section conferences
              buildSection('Conferences', conferences),
              SizedBox(height: 20),
              // Section activites
              buildSection('Activites', activites),
              SizedBox(height: 20),
              // Section debats
              buildSection('Debats', debats),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSection(String title, List<Item> items ) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
              Icon(Icons.add, size: 30,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: items.map((item) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(
                              item: item
                            )));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: ItemCard(
                              title: item.title,
                              date: '08/03/2024',
                              thumbnail: item.image,
                              location: "Moscou",
                            )
                          ),
                        ),
                      );
                    }).toList(),
                  );
                }),
            ),
          ),
      ],
    );
  }
}

// widget pour creer des section



