
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zodiac_sign_flutter/ui/getcompatibility/get_compatibility_screen.dart';
import 'package:zodiac_sign_flutter/ui/getsign/get_sign_screen.dart';
import 'package:zodiac_sign_flutter/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/core.dart';
import '../../di/preference_module.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Zodiac App',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const WelcomeScreen()),
        GetPage(name: '/get', page: () => const GetSign()), 
        GetPage(name: '/compatibility', page: () => const GetCompatibility()),
      ],
    ),
  );
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  //final loginViewModel = Get.find<LoginViewModel>();
  //final preferenceModule = Get.find<PreferenceModule>();

  final String txtPrincipalWelcome = "¡Bienvenido al zodiaco! Donde los signos no solo predicen tu destino, sino también tus excusas.";
  final String txtGetMySign = "Saber mi signo";
  final String txtGetCompatibility = "Compatibilidad";
  final String name = "Nombre";

  @override
  Widget build(BuildContext context) {
    //preferenceModule.setString("new", "Theme by define");

    //print(preferenceModule.getString("new"));
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 254, 255, 255), 
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 20),
                  Card(
                    color: const Color.fromARGB(239, 8, 110, 243),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            txtPrincipalWelcome,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.germaniaOne(
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              labelText: name,
                              labelStyle: GoogleFonts.germaniaOne(color: const Color.fromARGB(255, 5, 15, 121)),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Color.fromARGB(255, 87, 182, 237)),
                                
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Get.toNamed('/get');
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(237, 255, 255, 255), 
                                  side: const BorderSide(color: Color.fromARGB(255, 1, 107, 246)),
                                ),
                                child: Text(
                                  txtGetMySign,
                                  style: GoogleFonts.germaniaOne( fontSize: 18, color: const Color.fromARGB(255, 2, 129, 175)),
                                  
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Get.toNamed('/compatibility');
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:  const Color.fromARGB(237, 255, 255, 255), 
                                  side: const BorderSide(color: Color.fromARGB(255, 73, 209, 209)),
                                ),
                                child: Text(
                                  txtGetCompatibility,
                                  style: GoogleFonts.germaniaOne(fontSize: 18, color:const Color.fromARGB(237, 1, 103, 255)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

