import 'package:fedesie_app/widgets/contact_card.dart';
import 'package:flutter/material.dart';

class MemberContactList extends StatelessWidget {
  const MemberContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: ListView(
        children: [
          contact(),
          contact(),
          contact(),
          contact(),
          contact(),
          contact(),
          contact()
        ],
      ),
    );
  }
}
