import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';


class GetSign extends StatefulWidget {
  const GetSign({super.key});

  @override
  State<GetSign> createState() => _GetSignState();
}

class _GetSignState extends State<GetSign> {
  final Signo _signo = Signo();
  final String tittle = "Elige tu fecha de nacimiento";
  final storage = GetStorage(); // Inicializar GetStorage

  @override
  Widget import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';


class GetSign extends StatefulWidget {
  const GetSign({super.key});

  @override
  State<GetSign> createState() => _GetSignState();
}

class _GetSignState extends State<GetSign> {
  final Signo _signo = Signo();
  final String tittle = "Elige tu fecha de nacimiento";
  final storage = GetStorage(); // Inicializar GetStorage

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo
          Positioned.fill(
            child: Image.asset(
              'assets/images/chacha.jpeg', 
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Card(
              color: const Color.fromARGB(98, 240, 182, 241),
              margin: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), 
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(168, 243, 229, 33),
                        borderRadius: BorderRadius.circular(20), 
                      ),
                      child: Column(
                        children: [
                          Text(
                            '¡EMPECEMOS!',
                            style: GoogleFonts.firaSans(
                              fontSize: 30,
                              color: const Color.fromARGB(255, 0, 0, 1),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            tittle,
                            style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: const Color.fromARGB(255, 45, 67, 76),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(158, 255, 211, 14),
                        borderRadius: BorderRadius.circular(20), // Bordes circulares para este contenedor
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _signo.getDateString(),
                            style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: IconButton(
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
                                    storage.write('signoZodiacal', _signo.getSignoZodiacal());
                                  });
                                }
                              },
                              icon: const Icon(Icons.calendar_today),
                              color: const Color.fromARGB(255, 208, 1, 254),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(171, 245, 251, 80),
                        borderRadius: BorderRadius.circular(20), // Bordes circulares para este contenedor
                      ),
                      child: Text(
                        storage.read('signoZodiacal') ?? 'El signo no ha sido seleccionado',
                        style: GoogleFonts.firaSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 1, 1, 1),
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
                            backgroundColor: const Color.fromARGB(142, 255, 255, 255),
                            side: const BorderSide(color: Color.fromARGB(255, 209, 73, 73)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20), 
                            ),
                          ),
                          child: Text(
                            'Inicio',
                            style: GoogleFonts.firaSans(fontSize: 14, color: const Color.fromARGB(236, 255, 1, 1), fontWeight: FontWeight.bold,),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Get.toNamed('/moreget');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(171, 255, 255, 255),
                            side: const BorderSide(color: Color.fromARGB(255, 255, 238, 0), ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20), // Bordes circulares para el botón
                            ),
                          ),
                          child: Text(
                            'Más sobre mi signo',
                            style: GoogleFonts.firaSans(fontSize: 14, color: const Color.fromARGB(255, 255, 230, 1), fontWeight: FontWeight.bold,),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Get.toNamed('/compatibility');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(145, 255, 255, 255),
                            side: const BorderSide(color: Color.fromARGB(255, 0, 76, 255)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20), 
                            ),
                          ),
                          child: Text(
                            'Compatibilidad',
                            style: GoogleFonts.firaSans(fontSize: 14, color: const Color.fromARGB(255, 1, 213, 255), fontWeight: FontWeight.bold,),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
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
