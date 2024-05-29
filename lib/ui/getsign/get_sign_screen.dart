import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zodiac_sign_flutter/ui/welcome/welcome_screen.dart';

import '../../core/core.dart';
import '../../di/preference_module.dart';

class GetSign extends StatefulWidget {
  const GetSign({super.key});

  @override
  
  _GetSignState createState() => _GetSignState();
}

class _GetSignState extends State<GetSign> {
//final loginViewModel = Get.find<LoginViewModel>();
  //final preferenceModule = Get.find<PreferenceModule>();

  final Signo _signo = Signo();
  final String tittle = "Elige tu fecha de nacimiento";
  final String fechaa = "Selecciona";
  @override
  Widget build(BuildContext context) {
    //preferenceModule.setString("new", "Theme by define");

    //print(preferenceModule.getString("new"));
    String? userName = Get.arguments as String?;
    
    return Scaffold(
      body: Center(
        child: Card(
          color: const Color.fromARGB(237, 255, 245, 50),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  color: const Color.fromARGB(255, 243, 229, 33),
                  child: Column(
                    children: [
                      Text(
                        '¡Bienvenido, ${userName ?? "Nombre"}!',
                        style: GoogleFonts.germaniaOne(
                          fontSize: 30,
                          color: const Color.fromARGB(255, 7, 174, 235),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        tittle,
                        style: GoogleFonts.germaniaOne(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 7, 174, 235),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () async {
                    final resultado = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1020),
                      lastDate: DateTime(2050),
                    );
                    if (resultado != null) {
                      setState(() {
                        _signo.setDate(resultado);
                      });
                    }
                  },
                  icon: const Icon(Icons.calendar_today),
                  label: Text(
                    fechaa,
                    style: GoogleFonts.germaniaOne(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 254, 216, 1),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(12),
                  color: const Color.fromARGB(158, 255, 14, 14),
                  child: Text(
                    _signo.getDateString(),
                    style: GoogleFonts.germaniaOne(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 1, 140, 254),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(12),
                  color: const Color.fromARGB(171, 80, 160, 251),
                  child: Text(
                    _signo.getSignoZodiacal(),
                    style: GoogleFonts.germaniaOne(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 254, 5, 1),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(237, 255, 255, 255),
                        side: const BorderSide(color: Color.fromARGB(255, 209, 73, 73)),
                      ),
                      child: Text(
                        'Inicio',
                        style: GoogleFonts.germaniaOne(fontSize: 18, color: const Color.fromARGB(236, 255, 1, 1)),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        
                        Get.toNamed('/moreget', arguments: _signo.getSignoZodiacal());

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(237, 255, 255, 255),
                        side: const BorderSide(color: Color.fromARGB(255, 255, 238, 0)),
                      ),
                      child: Text(
                        'Más sobre mi signo',
                        style: GoogleFonts.germaniaOne(fontSize: 18, color: const Color.fromARGB(255, 255, 230, 1)),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/compatibility');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(237, 255, 255, 255),
                        side: const BorderSide(color: Color.fromARGB(255, 0, 76, 255)),
                      ),
                      child: Text(
                        'Compatibilidad',
                        style: GoogleFonts.germaniaOne(fontSize: 18, color: const Color.fromARGB(255, 1, 213, 255)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class Signo {
  DateTime? _date;

  void setDate(DateTime date) {
    _date = date;
  }

  String getDateString() {
    if (_date != null) {
      return '${_date!.day} - ${_date!.month} - ${_date!.year}';
    }
    return 'DD/MM/YYYY';
  }

  String getSignoZodiacal() {
    if (_date != null) {
      if ((_date!.month == 3 && _date!.day >= 21) || (_date!.month == 4 && _date!.day <= 19)) {
        return 'Aries';
      } else if ((_date!.month == 4 && _date!.day >= 20) || (_date!.month == 5 && _date!.day <= 20)) {
        return 'Tauro';
      } else if ((_date!.month == 5 && _date!.day >= 21) || (_date!.month == 6 && _date!.day <= 20)) {
        return 'Géminis';
      } else if ((_date!.month == 6 && _date!.day >= 21) || (_date!.month == 7 && _date!.day <= 22)) {
        return 'Cáncer';
      } else if ((_date!.month == 7 && _date!.day >= 23) || (_date!.month == 8 && _date!.day <= 22)) {
        return 'Leo';
      } else if ((_date!.month == 8 && _date!.day >= 23) || (_date!.month == 9 && _date!.day <= 22)) {
        return 'Virgo';
      } else if ((_date!.month == 9 && _date!.day >= 23) || (_date!.month == 10 && _date!.day <= 22)) {
        return 'Libra';
      } else if ((_date!.month == 10 && _date!.day >= 23) || (_date!.month == 11 && _date!.day <= 21)) {
        return 'Escorpio';
      } else if ((_date!.month == 11 && _date!.day >= 22) || (_date!.month == 12 && _date!.day <= 21)) {
        return 'Sagitario';
      } else if ((_date!.month == 12 && _date!.day >= 22) || (_date!.month == 1 && _date!.day <= 19)) {
        return 'Capricornio';
      } else if ((_date!.month == 1 && _date!.day >= 20) || (_date!.month == 2 && _date!.day <= 18)) {
        return 'Acuario';
      } else if ((_date!.month == 2 && _date!.day >= 19) || (_date!.month == 3 && _date!.day <= 20)) {
        return 'Piscis';
      }
    }
    return 'Tu signo es: ';
  }
}
