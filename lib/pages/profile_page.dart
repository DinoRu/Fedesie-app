import 'package:fedesie_app/widgets/Inkwel_widget.dart';
import 'package:fedesie_app/widgets/big_text.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: BigText(color: Colors.black, text: "Profil personnel"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        elevation: 0,
        child: Icon(Icons.edit, size: 20),
        onPressed: (() => {}),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.black,
                          )
                        ),
                        child: Icon(Icons.person_rounded, size: 50),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(color: Colors.black, text: "Yoa Jean Martias"),
                          Text('RUDEN / MOSCOU', style: TextStyle(color: Colors.grey, fontSize: 14), )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Divider(),
                SizedBox(height: 25),
                BigText(color: Colors.black, text: "Informations personnelles"),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(color: Colors.black.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Nom "),
                          BigText(color: Colors.black, text: 'Yao', size: 18,)
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Prenom"),
                          BigText(color: Colors.black, text: 'Jean Martias', size: 18,)
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Ville "),
                          BigText(color: Colors.black, text: 'Moscou', size: 18,)
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Université "),
                          BigText(color: Colors.black, text: 'RUDEN', size: 18)
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Numero "),
                          BigText(color: Colors.black, text: '8(988) 000 20 20', size: 14,)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15),
                ParameterWidget(Icon(Icons.people), "Contacts importants"),
                Divider(),
                ParameterWidget(Icon(Icons.diversity_3), "Communinautés"),
                Divider(),
                ParameterWidget(Icon(Icons.info), "À propos de la communauté")
              ],
            ),
          ),
        ),
      )
    );
  }
}
