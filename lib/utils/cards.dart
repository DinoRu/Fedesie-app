import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.imageUrl});
  
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(imageUrl, fit: BoxFit.cover)
      )
    );
  }
}
