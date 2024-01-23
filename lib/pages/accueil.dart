import 'package:flutter/material.dart';

class Accueil extends StatelessWidget {
  Accueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageSlider(),
    );
  }
}

class ImageSlider extends StatelessWidget {
  ImageSlider({super.key});
  List<String> images = [
    'assets/love.png',
    'assets/team.png',
    'assets/vision.png',
    'assets/shopping.png',
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Image.asset(images[index], fit: BoxFit.cover);
        }
    );
  }
}

