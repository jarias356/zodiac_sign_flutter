import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zodiac_sign_flutter/utils/constants.dart';

import '../../commons/utils/preference_keys.dart';
import '../../route/route_const.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  final SharedPreferences _sharedPreferences = Get.find<SharedPreferences>();



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 209, 3, 178),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 209, 3, 178),
              ),
              child: Center(
                child: Text(
                  _sharedPreferences.getString(userNamePrefKey) ?? "---",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                txtGetMySign,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Get.toNamed(RouteConst.mySignPage);
              },
            ),
            ListTile(
              title: const Text(
                txtGetCompatibility,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Get.toNamed(RouteConst.compatibilityPages);
              },
            ),
          ],
        ),
      ),
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
                    urlImageWelcome,
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
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: [
                      Text(
                        txtWelcome,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.firaSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: const Color.fromARGB(255, 209, 3, 178),
                          height: 1
                        ),
                      ),
                      const SizedBox(height: 32),
                      Text(
                        txtWelcomeDescription,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.firaSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color:  const Color.fromARGB(255, 6, 5, 0),
                          height: 1
                        ),
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
