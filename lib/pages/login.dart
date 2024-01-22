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
                flex: 1,
                  child: SizedBox(height: 10,)
              ),
              Expanded(
                  flex: 7,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(25, 50, 25, 20),
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
                                label: Text('Email'),
                                hintText: 'Email',
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
                            SizedBox(height: 40,),
                            TextFormField(
                              obscureText: true,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.text,
                              validator: (String? value) {
                                if(value == null || value.isNotEmpty){
                                  print('Svp, entrez un mot passe valid');
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  label: Text('Mot de passe'),
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
                                Text('Mot de passe oublié?',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                                )
                              ],
                            ),
                            SizedBox(height: 25.0),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: (){},
                                child: Text('Se connecter'),
                              ),
                            ),
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
