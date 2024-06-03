import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get_storage/get_storage.dart';

class GetMoreSign extends StatelessWidget {
  const GetMoreSign({super.key});

  @override
  Widget build(BuildContext context) {
    final storage = GetStorage(); 

    final String signo = storage.read('signoZodiacal') ?? 'No hay signo seleccionado';
    final String descripcion = obtenerDescripcionSigno(signo);

    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('assets/images/constela.jpg'), 
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ZodiacCard(signo: signo, descripcion: descripcion),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/get');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(131, 255, 247, 247),
                        side: const BorderSide(color: Color.fromARGB(255, 255, 8, 0)),
                      ),
                      child: Text(
                        'Atrás',
                        style: GoogleFonts.firaSans(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 190, 4, 4),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/compatibility');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(131, 255, 247, 247),
                        side: const BorderSide(color: Color.fromARGB(255, 255, 8, 0)),
                      ),
                      child: Text(
                        'Ver compatibilidad',
                        style: GoogleFonts.firaSans(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 190, 4, 4),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


String obtenerDescripcionSigno(String signo) {
  switch (signo.toLowerCase()) {
    case 'aries':
      return 'Este signo, que inaugura el zodiaco, simboliza el renacer y los nuevos inicios, perfectamente alineado con la vitalidad de la primavera. Regido por Marte, el planeta de la energía y la acción, Aries encarna el coraje, la iniciativa y una inquebrantable determinación.';
    case 'tauro':
      return 'Este signo de tierra destaca por su firmeza y gusto por lo sensual. Valorando lo material, Tauro encuentra guía en Venus, el planeta del amor y la belleza, marcando su camino con perseverancia y un toque de elegancia natural.';
    case 'géminis':
      return 'Felicidades porque has nacido bajo el signo de Géminis, una personalidad conocida por su curiosidad, adaptabilidad, elocuencia y gusto por las bromas.';
    case 'cáncer':
      return 'El signo de la sensibilidad y el cuarto signo del zodiaco, caracterizado por su afán de proteger y sus sentimientos profundos. Destaca por ser una persona protectora, hospitalaria e imaginativa.';
    case 'leo':
      return 'Como buen rey de la selva, Leo irradia naturalidad y ejerce un autocontrol constante. Generoso, afectuoso, autoritario, orgulloso, exigente y a veces incluso intransigente, se muestra exclusivo en todas sus relaciones.';
    case 'virgo':
      return 'Este signo se repliega sobre sí mismo y se cuestiona enormemente, lo que a veces significa hacer una verdadera introspección. Una Virgo estudia, analiza, mide, calcula y selecciona metódicamente todo lo que hace. Reina de la organización y la autocrítica, necesita orden y organización.';
    case 'libra':
      return 'Los nacidos bajo este signo del zodiaco son personas llenas de armonía, justicia, igualdad y equilibrio. Se les considera el signo más educado y civilizado del zodíaco, ya que siempre muestras una actitud serena y ecuánime.';
    case 'escorpio':
      return 'Tienes una personalidad intensa y te caracterizas, sobre todo, por la pasión, la intensidad y la emoción. También se te considera el signo más energético y extremo del zodíaco.';
    case 'sagitario':
      return 'Es entusiasta, alegre, optimista, cálido y generoso. Necesita dejar florecer su alegre personalidad. Sereno, optimista y a veces aventurero, siempre está en busca de su felicidad. Jovial, ingenuo y lleno de buena voluntad, tiende a evitar las complicaciones.';
    case 'capricornio':
      return 'El décimo signo del zodíaco, se caracteriza por su sentido práctico y representa la disciplina, ambición y racionalidad. Por ello, es el signo del zodíaco más decidido y persistente.';
    case 'acuario':
      return 'Es un signo astrológico muy independiente, aspira a desligarse de su entorno y de los principios que le han sido inculcados para echar sus propias raíces, crear sus valores y afirmar su libertad de pensar y actuar. Original, no conformista, oportunista, curioso y cambiante, es capaz de adaptarse a todas las situaciones.';
    case 'piscis':
      return 'Es una persona inspirada, sensible, sensual, receptiva e imaginativa que aspira a la fusión afectiva o espiritual. Una sed de absoluto lo anima diariamente y lo hace generoso hasta el sacrificio. Sin embargo, a menudo se ve atormentado por su ansiedad.';
    default:
      return 'No se encontró una descripción para este signo.';
  }
}


class ZodiacCard extends StatelessWidget {
  final String signo;
  final String descripcion;

  const ZodiacCard({super.key, required this.signo, required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(115, 253, 247, 191),
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tu signo zodiacal es...',
              style: GoogleFonts.firaSans(fontSize: 26, color: const Color.fromARGB(255, 240, 20, 20), fontWeight: FontWeight.bold,),
            ),
            const SizedBox(height: 10),
            Text(
              signo,
              style: GoogleFonts.firaSans(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold,),
            ),
            const SizedBox(height: 10),
            Text(
              descripcion,
              style: GoogleFonts.firaSans(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold,),
            ),
          ],
        ),
      ),
    );
  }
}
