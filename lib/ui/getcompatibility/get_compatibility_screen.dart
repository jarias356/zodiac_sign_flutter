import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zodiac_sign_flutter/ui/getcompatibility/get_compatibility_screen.dart';
import 'package:zodiac_sign_flutter/ui/getsign/get_more_sign.dart';
import 'package:zodiac_sign_flutter/ui/getsign/get_sign_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zodiac_sign_flutter/ui/login/login_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Zodiac App',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/SigIn', page: () =>  const SignIn()),
        GetPage(name: '/', page: () =>  WelcomeScreen()),
        GetPage(name: '/get', page: () => const GetSign()), 
        GetPage(name: '/compatibility', page: () => const GetCompatibility()),
        GetPage(name: '/moreget', page: () => const GetMoreSign()),
      ],
    ),
  );
}

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});
  //final loginViewModel = Get.find<LoginViewModel>();
  //final preferenceModule = Get.find<PreferenceModule>();

  final String txtPrincipalWelcome = "¡Bienvenido al zodiaco! Donde los signos no solo predicen tu destino, sino también tus excusas.";
  final String txtGetMySign = "Saber mi signo";
  final String txtGetCompatibility = "Compatibilidad";
  final String name = "Nombre";

  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //preferenceModule.setString("new", "Theme by define");

    //print(preferenceModule.getString("new"));
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: size.height * 0.53,
                width: size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  color: Color.fromARGB(120, 217, 8, 249),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  child: Image.network(
                    'https://media.diariouno.com.ar/p/9f1c8c2fd87421d18b463fce00d97d7e/adjuntos/298/imagenes/009/259/0009259225/1200x0/smart/horoscopo-signos-zodiacojpg.jpg',
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.6,
              left: 0,
              right: 0,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      '¡Bienvenidos a Signo Zodiacal!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.firaSans( 
                        fontWeight: FontWeight.bold, 
                        fontSize: 28, 
                        color: const Color.fromARGB(255, 209, 3, 178), 
                        height: 1
                      ),
                      
                    ),
                    const SizedBox(height: 25),
                    Text(
                      'Donde los signos no solo predicen tu destino, sino también tus excusas.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.ptSans( 
                        fontWeight: FontWeight.bold, 
                        fontSize: 18, 
                        color:  const Color.fromARGB(255, 6, 5, 0), 
                        height: 1
                      ),
                    ),
                    SizedBox(height: size.height * 0.07),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        height: size.height * 0.08,
                        width: size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 247, 210, 107).withOpacity(0.30),
                          border: Border.all(color: const Color.fromARGB(255, 255, 239, 95), width: 1),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 247, 210, 107).withOpacity(0.05),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: const Offset(0, -1),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed('/');
                                },
                                child: Container(
                                  height: size.height * 0.08,
                                  width: size.width / 2.2,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: const Color.fromARGB(255, 246, 142, 255), // Color del borde
                                      width: 2, // Grosor del borde
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Registrarse',
                                      style: GoogleFonts.ptSans(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: const Color.fromARGB(255, 230, 2, 255),
                                      ),
                                    ),
                                  ),
                                ),
                                
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed('/SigIn');
                                },
                                child:  Text(
                                  'Iniciar Sesión',
                                  style: GoogleFonts.ptSans( 
                                  fontWeight: FontWeight.bold, 
                                  fontSize: 18, 
                                  color:  const Color.fromARGB(255, 255, 204, 2), 
                                  height: 1
                                  ),
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
