import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 248, 247, 243),
              Color.fromARGB(255, 239, 237, 237),
              Color.fromARGB(255, 225, 220, 225)
            ]
          )
        ),
        child: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(
                '¡Inicia Sesión!',
                textAlign: TextAlign.center,
                style: GoogleFonts.firaSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: const Color.fromARGB(255, 209, 3, 178),
                ),
              ),
              Text(
                'Exploremos este asombroso mundo juntos.',
                textAlign: TextAlign.center,
                style: GoogleFonts.firaSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  height: 1.2,
                ),
              ),
              SizedBox(height: size.height * 0.04),
              myTextField('Enter username'),
              myTextField('Password'),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '¡Recovery Password',
                  style: GoogleFonts.firaSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: const Color.fromARGB(255, 192, 9, 253),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/get');
                      },
                      child: Container(
                        width: size.width,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 21, 251),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'Sign In',
                            style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.04),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 2,
                          width: size.width * 0.2,
                          color: Colors.black12,
                        ),
                        Text(
                          ' Or continue with ',
                          style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        Container(
                          height: 2,
                          width: size.width * 0.2,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.06),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        iconButton(FontAwesomeIcons.google, Colors.red),
                        const SizedBox(width: 20),
                        iconButton(FontAwesomeIcons.facebookF, Colors.blue),
                        const SizedBox(width: 20),
                        iconButton(FontAwesomeIcons.twitter, const Color.fromARGB(255, 33, 243, 135)),
                      ],
                    ),
                    SizedBox(height: size.height * 0.07),
                    Text.rich(
                      TextSpan(
                        text: 'Not a member? ',
                        style: GoogleFonts.firaSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                        children: [
                          TextSpan(
                        text: 'Register now.',
                        style: GoogleFonts.firaSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: const Color.fromARGB(255, 255, 5, 205),
                        ),),
                        ],

                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget iconButton(IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: FaIcon(
        icon,
        color: color,
        size: 24,
      ),
    );
  }

  Container myTextField(String hint) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 22,
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black45,
            fontSize: 18,
          ),
          suffixIcon: const Icon(
            Icons.visibility_off_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
