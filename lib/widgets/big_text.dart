import 'package:flutter/material.dart';

class BigText extends StatelessWidget {

  final Color color;
  final String text;
  TextOverflow overflow;
  double size;
  BigText({super.key,
    required this.color,
    required this.text,
    this.size = 20,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
