import 'package:fedesie_app/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

 final _formSignInkey = GlobalKey<FormState>();
 bool remenberPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("S'inscrire", style: TextStyle(color: Colors.white),),
            Text('Se Connecter', style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 2,
                  child: SizedBox(height: 10,)
              ),
              Expanded(
                  flex: 8,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(25, 40, 25, 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      )
                    ),
                    child: SingleChildScrollView(
                      child: Form(
                        key: _formSignInkey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Connexion",
                              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                            ),
                            SizedBox(height: 40),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                label: Text("Email/Nom d'utilisateur",
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.orange,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                )
                              ),
                              validator: (String? value) {
                                if(value!.length == 0){
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text("Entrer un nom d'utilisateur valid"))
                                  );
                                }
                              },
                            ),
                            SizedBox(height: 40,),
                            TextFormField(
                              obscureText: true,
                              obscuringCharacter: '*',
                              validator: (String? value) {
                                if(value == null || value.isNotEmpty){
                                  print('Svp, entrez un mot passe valid');
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  label: Text('Mot de passe',
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.orange,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  )
                              ),
                            ),
                            SizedBox(height: 40),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                        value: remenberPassword,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            remenberPassword = value!;
                                          });
                                        },
                                      activeColor: Colors.orange,
                                    ),
                                    Text('Se souvenir de moi'),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text('Mot de passe oublié?',
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 25.0),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: (){
                                  if(_formSignInkey.currentState!.validate() && remenberPassword){
                                    Navigator.of(context).pushNamedAndRemoveUntil('Accueil', (route) => false);
                                  } else if(!remenberPassword) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text('Svp, Veuillez accepter les conditions'))
                                    );
                                  }
                                },
                                child: Text('Se connecter'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  foregroundColor: Colors.white,
                                  textStyle: TextStyle(fontWeight: FontWeight.bold)
                                ),
                              ),
                            ),
                            SizedBox(height: 25.0),
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    thickness: 0.7,
                                    color: Colors.grey.withOpacity(0.5),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text('Se connecter avec',
                                    style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black45)
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    thickness: 0.7,
                                    color: Colors.grey.withOpacity(0.5),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset('assets/search.png', width: 40, height: 40),
                                Image.asset('assets/facebook.png', width: 40, height: 40),
                                Image.asset('assets/vk.png', width: 40, height: 40)
                              ],
                            ),
                            SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Vous n'avez pas encore un compte?",
                                  style: TextStyle(color: Colors.black54),
                                ),
                                GestureDetector(
                                  onTap: (){
                                      Navigator.of(context).push(
                                        MaterialPageRoute(builder: (_) => Signup())
                                      );
                                  },
                                  child: Text('Creer un compte',
                                    style: TextStyle(color: Colors.green, fontWeight: FontWeight.w800),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
              )
            ],
          )
        ],
      )
    );
  }
}
