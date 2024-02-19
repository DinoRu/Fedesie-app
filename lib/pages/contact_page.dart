import 'package:fedesie_app/widgets/contactBureauList.dart';
import 'package:fedesie_app/widgets/memberContactList.dart';
import 'package:flutter/material.dart';


class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2, 
        child: Scaffold(
          appBar: AppBar(
            title: Text('Contacts'),
            bottom: TabBar(
              tabs: [
                Text('Bureau'),
                Text('Membres')
              ],
            ),
          ),
          body: TabBarView(
            children: [
              AdminContactList(),
              MemberContactList()
            ],
          ),
        )
    );
  }
}
