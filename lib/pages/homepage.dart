import 'package:fedesie_app/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:fedesie_app/pages/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 44,),
                Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 500.0,
                        child: Image.asset('assets/fedesie_logo_png.png', width: 100, height: 100),
                      ),
                    )
                ),
                SizedBox(
                  height: 44.0
                ),
                Container(
                  width: double.infinity,
                  child: Center(
                    child: Text("Bienvenue sur notre communauté,\n Nous partageons des infos "
                        "utiles et des evenements",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20,)),
                  ),
                ),
                SizedBox(height: 40),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => Login()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                            child: Text('Se connecter',
                              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20, color: Colors.white),),
                          ),
                        ),
                    ),
                    SizedBox(height: 40,),
                    FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Vous n'avez pas de compte?",
                          style: TextStyle(fontSize: 20)),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => Signup())
                              );
                            },
                            child: Text("S'inscrire",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800,
                              color: Colors.green),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
