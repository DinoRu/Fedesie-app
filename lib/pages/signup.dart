import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final _signupKey = GlobalKey<FormState>();
  bool _acceptedPolicy = true;
  FocusNode _focusNode = FocusNode();
  bool _hasInput = false;
  String iniatialCountry = 'RU';
  PhoneNumber number = PhoneNumber(isoCode: 'RU');

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            children: [
              Expanded(
                flex: 1,
                  child: SizedBox(height: 2),
              ),
              Expanded(
                flex: 8,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(25, 40, 20, 20),
                    decoration: BoxDecoration(
                      color: Colors.white,

                    ),
                    child: SingleChildScrollView(
                      child: Form(
                        key: _signupKey,
                        child: Column(
                          children: [
                            Text("Creer un compte", style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 25
                            )
                            ),
                            SizedBox(height: 25,),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Nom & prenom',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              focusNode: _focusNode,
                              onChanged: (value) {
                                setState(() {
                                  _hasInput = value.isNotEmpty;
                                });
                              },
                              decoration: InputDecoration(
                                  labelText: 'Ville de residence',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ),

                              ),
                            ),
                            SizedBox(height: 20),
                            IntlPhoneField(
                              decoration: InputDecoration(
                                labelText: 'Numero de telephone',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.orange
                                    )
                                )
                              ),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Mot de passe',
                                border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Confirmer le mot de passe',
                                border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                      value: _acceptedPolicy,
                                      onChanged: (bool? value) => setState(() {
                                          _acceptedPolicy = value!;
                                      }),
                                    activeColor: Colors.orange,
                                  ),
                                  Text("J'accepte les conditions d'utilisation")
                                ],
                              ),
                            ),
                            SizedBox(height: 25.0),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: (){
                                  if(_signupKey.currentState!.validate() && _acceptedPolicy){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text('Bienvenue sur notre app'))
                                    );
                                  } else if(!_acceptedPolicy) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text('Svp, Veuillez accepter les conditions'))
                                    );
                                  }
                                },
                                child: Text("S'inscrire"),
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

                          ],
                        ),
                      )
                    ),
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}
