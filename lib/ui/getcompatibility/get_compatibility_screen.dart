import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

// Widget para los botones
class NavigationButtons extends StatelessWidget {
  const NavigationButtons();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(235, 255, 247, 247),
            side: const BorderSide(color: Color.fromARGB(255, 255, 8, 0)),
          ),
          icon: const Icon(Icons.home, color: Color.fromARGB(255, 190, 4, 4)),
          label: Text(
            'Inicio',
            style: GoogleFonts.germaniaOne(fontSize: 18, color: const Color.fromARGB(255, 190, 4, 4)),
          ),
        ),
        const SizedBox(width: 20),
        ElevatedButton.icon(
          onPressed: () {
            Get.toNamed('/compatibility');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(236, 1, 183, 189),
            side: const BorderSide(color: Color.fromARGB(255, 0, 76, 255)),
          ),
          icon: const Icon(Icons.favorite, color: Colors.white),
          label: Text(
            'Ver compatibilidad',
            style: GoogleFonts.germaniaOne(fontSize: 18, color: Colors.white),
          ),
        ),
      ],
    );
  }
}

// Widget principal
class GetCompatibility extends StatelessWidget {
  const GetCompatibility();

  @override
  Widget build(BuildContext context) {

    final storage = GetStorage(); 
    
    final String signo = storage.read('signoZodiacal') ?? 'No hay signo seleccionado';
    final String descripcion = obtenerDescripcionSigno(signo);

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
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
                      Navigator.pushNamed(context, '/');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(235, 255, 247, 247),
                      side: const BorderSide(color: Color.fromARGB(255, 255, 8, 0)),
                    ),
                    child: Text(
                      'Inicio',
                      style: GoogleFonts.germaniaOne(fontSize: 18, color: const Color.fromARGB(255, 190, 4, 4)),
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/compatibility');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(236, 1, 183, 189),
                      side: const BorderSide(color: Color.fromARGB(255, 0, 76, 255)),
                    ),
                    child: Text(
                      'Ver compatibilidad',
                      style: GoogleFonts.germaniaOne(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String obtenerDescripcionSigno(String signo) {
  switch (signo.toLowerCase()) {
    case 'aries':
      return 'Libra: La compatibilidad entre Libra y Aries es una dinámica de opuestos que se atraen, creando un equilibrio perfecto entre dos energías distintas.\n'
      'Leo: La unión entre Leo y Aries es una alianza llena de pasión, energía y un fuerte sentido de la aventura. Ambos signos son de fuego, lo que significa que comparten una vitalidad innata, un amor por la vida y un espíritu indomable.\n'
      'Sagitario: La compatibilidad entre Sagitario y Aries es una de las más altas entre todos los signos del zodíaco, principalmente debido a su naturaleza compartida de fuego, que les brinda una comprensión instintiva el uno del otro.';
    case 'tauro':
      return '''Escorpio: La compatibilidad entre Escorpio y Tauro es la dinámica clásica de opuestos que se atraen, creando una relación intensa y magnética.\n
      Virgo: La unión entre Virgo y Tauro es una de comprensión mutua y valores compartidos. Ambos signos de tierra valoran la estabilidad, la practicidad y el trabajo duro.\n
      Capricornio: La compatibilidad entre Capricornio y Tauro es alta, ya que ambos comparten una naturaleza práctica y una dedicación al trabajo duro.''';
    case 'géminis':
      return '''
      Libra: Al ser ambos signos de aire, comparten un amor mutuo por el discurso intelectual y las actividades sociales, lo que les convierte en la pareja perfecta.\n
      Acuario: Con su espíritu aventurero compartido, los Géminis y los Acuario pueden crear una dinámica excitante y de espíritu libre, excelente como pareja de Géminis.\n
      Leo: Los Géminis se sienten atraídos por la pasión ardiente y la personalidad magnética de Leo, que mantiene viva su relación.''';
    case 'cáncer':
      return '''
      Piscis: La conexión emocional entre Cáncer y Piscis es natural y profunda. Ambos valoran una relación segura y comprometida y comprenden profundamente las emociones del otro.\n
      Escorpio: Escorpio y Cáncer son muy compatibles, ya que ambos son signos de agua. Su relación está marcada por emociones intensas, una profunda comprensión y un vínculo tácito difícil de romper. \n
      Virgo: El sentido práctico de Virgo complementa la naturaleza emocional de Cáncer. Virgo ofrece una base a las emociones de Cáncer, mientras que Cáncer aprecia la atención al detalle y el cuidado de Virgo. \n
      Tauro: Tanto Cáncer como Tauro valoran la seguridad en una relación y comparten el amor por una existencia acogedora. Este punto en común los convierte en una buena pareja. \n
    ''';
    case 'leo':
      return '''
      Aries: Ambos son signos de fuego, lo que significa que comparten una energía ardiente y pasional. Tienen una fuerte atracción mutua y comparten valores como la pasión, la aventura y la determinación.\n
      Sagitario: Otro signo de fuego, Sagitario y Leo comparten una naturaleza optimista, aventurera y extrovertida. Disfrutan de la vida social, la diversión y la exploración de nuevas experiencias juntos.\n
      Géminis: Aunque Géminis es un signo de aire y Leo es de fuego, su relación puede ser emocionante y estimulante. Géminis aporta variedad, comunicación y curiosidad intelectual, mientras que Leo aporta pasión, liderazgo y creatividad.\n
      Libra: A pesar de ser signos opuestos en el zodíaco, Libra y Leo pueden complementarse bien. Libra busca la armonía y el equilibrio en las relaciones, lo que puede calmar el lado dominante de Leo, mientras que Leo aporta confianza, entusiasmo y romance a la relación.

    ''';
    case 'virgo':
      return '''
      Tauro y Capricornio: Estos son otros signos de tierra y tienden a tener una buena compatibilidad con Virgo. Comparten valores como la estabilidad, la responsabilidad y la practicidad. Juntos forman relaciones sólidas, centradas en la confianza y la seguridad mutua.\n
      Cáncer: A pesar de ser un signo de agua, Cáncer y Virgo pueden complementarse bien. Cáncer aporta sensibilidad emocional y cuidado, mientras que Virgo ofrece apoyo práctico y racionalidad. Juntos pueden construir una relación equilibrada entre lo emocional y lo práctico. \n
      Escorpio: Aunque Escorpio es un signo de agua y Virgo de tierra, esta combinación puede ser interesante. Escorpio aporta intensidad emocional, pasión y profundidad, mientras que Virgo brinda estabilidad, análisis y realismo. Si logran entender y respetar sus diferencias, pueden tener una relación enriquecedora. \n
      Piscis: Piscis es un signo de agua que contrasta con la naturaleza práctica de Virgo. Sin embargo, pueden complementarse si encuentran un equilibrio entre la sensibilidad emocional de Piscis y la racionalidad de Virgo. La comunicación clara y el respeto mutuo son clave para esta combinación.
    ''';
    case 'libra':
      return '''
      Aries: Aries y Libra tienen una relación interesante de polaridad opuesta en el zodíaco. Mientras Aries es más impulsivo y directo, Libra busca el equilibrio y la armonía. Si logran respetar sus diferencias y aprender del otro, pueden formar una pareja dinámica y equilibrada. \n
      Tauro y Capricornio: Estos signos de tierra pueden complementar bien a Libra. Tauro aporta estabilidad, seguridad y sentido práctico, mientras que Capricornio comparte valores de responsabilidad y ambición. Juntos pueden construir una relación sólida y duradera. \n
      Géminis: Al ser ambos signos de aire, Libra y Géminis tienen una conexión natural. Comparten intereses intelectuales, comunicación fluida y curiosidad por el mundo. Esta combinación puede llevar a una relación estimulante y llena de conversaciones interesantes. \n
      Cáncer: Aunque son signos opuestos en el zodíaco, Libra y Cáncer pueden aprender mucho el uno del otro. Cáncer aporta sensibilidad emocional, cuidado y profundidad, mientras que Libra ofrece equilibrio, diplomacia y armonía. Si encuentran un equilibrio entre lo emocional y lo racional, pueden tener una relación enriquecedora. \n
      Leo: Leo y Libra pueden formar una pareja vibrante y socialmente activa. Leo aporta pasión, carisma y confianza, mientras que Libra ofrece equilibrio, cooperación y diplomacia. Juntos pueden disfrutar de la vida social, la creatividad y el apoyo mutuo.\n
      Virgo: Aunque pueden tener diferencias en su enfoque hacia la vida, Libra y Virgo pueden complementarse bien. Virgo aporta organización, pragmatismo y atención a los detalles, mientras que Libra ofrece equilibrio emocional, armonía y capacidad para ver diferentes perspectivas. Si trabajan juntos en la comunicación y el entendimiento mutuo, pueden tener una relación equilibrada.
    ''';
    case 'escorpio':
      return '''
      Tauro: La relación entre Escorpio y Tauro se basa en una fuerte conexión emocional y física. Ambos signos son leales y apasionados, lo que crea una atracción magnética y duradera entre ellos. Su compatibilidad radica en su determinación mutua para construir una relación sólida y estable, basada en la confianza y el compromiso. \n
      Cáncer: La compatibilidad entre Escorpio y Cáncer es alta debido a su profunda conexión emocional y comprensión mutua. Ambos signos de agua comparten una intensidad emocional que fortalece su vínculo. Cáncer aporta sensibilidad y cuidado, mientras que Escorpio brinda pasión y lealtad, creando una relación equilibrada y significativa. \n
      Piscis: Escorpio y Piscis forman una pareja armoniosa y compenetrada debido a su naturaleza intuitiva y emocional. Ambos signos de agua comparten una conexión espiritual y una profunda comprensión mutua. La compatibilidad entre Escorpio y Piscis se basa en su capacidad para apoyarse y nutrirse emocionalmente, creando una relación llena de amor y compasión. \n
    ''';
    case 'sagitario':
      return '''
      Leo: La combinación de Leo y Sagitario es una de las más compatibles en el zodíaco. Ambos signos de fuego comparten una pasión ardiente, una actitud optimista y un amor por la aventura. La energía vibrante y la chispa constante entre ellos crean una relación llena de emoción y entusiasmo. \n
      Aries: La compatibilidad entre Sagitario y Aries es alta debido a su naturaleza similar. Ambos signos de fuego son enérgicos, aventureros y tienen una mentalidad independiente. Juntos, forman una pareja dinámica que se inspira mutuamente para alcanzar metas y vivir la vida al máximo. \n
      Libra: La combinación de Sagitario y Libra puede ser muy armoniosa. Libra aporta equilibrio, diplomacia y un enfoque social a la relación, mientras que Sagitario añade entusiasmo, espontaneidad y una perspectiva optimista. Juntos, pueden disfrutar de una vida social activa y una conexión mental estimulante. \n
      Acuario: Sagitario y Acuario comparten una mentalidad abierta y un amor por la libertad y la independencia. Ambos signos valoran la amistad, la originalidad y la exploración de nuevas ideas. La compatibilidad entre Sagitario y Acuario se basa en su capacidad para respetar la individualidad del otro y disfrutar de una relación sin restricciones. \n
    ''';
    case 'capricornio':
      return '''
      Tauro: La compatibilidad entre Capricornio y Tauro es alta debido a su naturaleza práctica y su enfoque similar hacia la vida. Ambos signos de tierra valoran la estabilidad, la seguridad y el trabajo duro. Juntos, pueden construir una relación sólida y duradera basada en la confianza y el respeto mutuo. \n
      Virgo: Capricornio y Virgo comparten una mentalidad orientada a los detalles y una ética de trabajo sólida. Su compatibilidad se basa en su capacidad para apoyarse y complementarse en la búsqueda de metas comunes. Ambos signos valoran la organización, la responsabilidad y la estabilidad, lo que crea una relación equilibrada y productiva. \n
      Escorpio: La combinación de Capricornio y Escorpio puede ser poderosa y apasionada. Ambos signos son determinados, ambiciosos y comparten una profunda lealtad. La compatibilidad entre Capricornio y Escorpio se basa en su capacidad para construir una relación sólida y duradera, basada en la confianza, la intensidad emocional y el compromiso mutuo. \n
      Piscis: Capricornio y Piscis pueden complementarse bien, aunque son signos muy diferentes. Capricornio aporta estabilidad, responsabilidad y un enfoque práctico, mientras que Piscis añade sensibilidad, creatividad y una perspectiva espiritual. Su compatibilidad se basa en su capacidad para equilibrar lo pragmático y lo emocional, creando una relación enriquecedora y equilibrada. \n
    ''';
    case 'acuario':
      return '''
      Géminis: La combinación de Acuario y Géminis es una de las más compatibles en el zodíaco. Ambos signos de aire comparten una mentalidad abierta, una curiosidad intelectual y una inclinación por la comunicación. Su compatibilidad se basa en su capacidad para estimularse mutuamente mentalmente y disfrutar de una vida social activa y dinámica. \n
      Libra: Acuario y Libra comparten una afinidad natural debido a su amor por la justicia, la igualdad y la armonía. Ambos signos de aire valoran la comunicación abierta y la búsqueda de soluciones equitativas. La compatibilidad entre Acuario y Libra se basa en su capacidad para colaborar y apoyarse mutuamente en la búsqueda de un mundo mejor. \n
      Aries: La combinación de Acuario y Aries puede ser emocionante y dinámica. Aries aporta energía, pasión y una actitud audaz, mientras que Acuario añade originalidad, visión de futuro y una mentalidad abierta. Juntos, pueden inspirarse mutuamente y crear una relación llena de aventuras y nuevas experiencias. \n
      Sagitario: Acuario y Sagitario comparten una mentalidad aventurera y una pasión por la exploración. Ambos signos valoran la independencia, la libertad y la expansión de horizontes. La compatibilidad entre Acuario y Sagitario se basa en su capacidad para respetar la individualidad del otro y disfrutar de una relación sin restricciones ni convencionalismos. \n
    ''';
    case 'piscis':
      return '''
      Tauro: La combinación de Piscis y Tauro puede ser armoniosa y complementaria. Tauro aporta estabilidad, seguridad y un enfoque práctico, mientras que Piscis añade sensibilidad, creatividad y una perspectiva espiritual. Su compatibilidad se basa en su capacidad para equilibrar lo pragmático y lo emocional, creando una relación enriquecedora y equilibrada. \n
      Cáncer: Piscis y Cáncer comparten una conexión emocional profunda y una comprensión intuitiva. Ambos signos de agua valoran la sensibilidad, el cuidado y la empatía en una relación. La compatibilidad entre Piscis y Cáncer se basa en su capacidad para apoyarse y nutrirse mutuamente, creando un vínculo emocional fuerte y duradero. \n
      Escorpio: La combinación de Piscis y Escorpio puede ser intensa y apasionada. Ambos signos son emocionales, intuitivos y comparten una conexión espiritual profunda. La compatibilidad entre Piscis y Escorpio se basa en su capacidad para comprender y apoyar las necesidades emocionales del otro, creando una relación de gran profundidad y significado. \n
      Capricornio: Piscis y Capricornio pueden complementarse bien, aunque son signos muy diferentes. Capricornio aporta estabilidad, responsabilidad y un enfoque práctico, mientras que Piscis añade sensibilidad, creatividad y una perspectiva espiritual. Su compatibilidad se basa en su capacidad para equilibrar lo pragmático y lo emocional, creando una relación enriquecedora y equilibrada. \n
    ''';
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
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Su copatibilidad es...',
               style: GoogleFonts.germaniaOne(fontSize: 26, color: const Color.fromARGB(255, 240, 20, 20)),
            ),
            const SizedBox(height: 10),
            Text(
              signo,
              style: GoogleFonts.germaniaOne(fontSize: 30, color: Colors.blue),
            ),
            const SizedBox(height: 10),
            Text(
              descripcion,
              style: GoogleFonts.germaniaOne(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

