import 'package:flutter/material.dart';

class AnnoncePage extends StatelessWidget {
  const AnnoncePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Mes Annonces'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Annonce'),
                Tab(text: 'Mes Annonces'),
              ],
            )
          ),
          body: TabBarView(
            children: [
              Center(child: Text('Annonce')),
              Center(child: Text('Mes Annonces'))
            ],
        )
        )
    );
  }
}
