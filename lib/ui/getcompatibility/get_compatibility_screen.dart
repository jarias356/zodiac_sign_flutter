import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class GetCompatibility extends StatelessWidget {
  const GetCompatibility({super.key});

  Widget build(BuildContext context) {
    final storage = GetStorage();
    final String signo = storage.read('signoZodiacal') ?? 'No hay signo seleccionado';
    final String descripcion = obtenerDescripcionSigno(signo);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('assets/images/chacha.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  ZodiacCard(signo: signo, descripcion: descripcion),
                  const SizedBox(height: 20),
                  
                ],
              ),
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
      Cáncer: La compatibilidad entre Escorpio y Cáncer es alta debido a su profunda comprensión emocional mutua. Ambos signos de agua, comparten una conexión intuitiva y empática. La intensidad y la lealtad de Escorpio complementan la sensibilidad y el cuidado de Cáncer, creando una relación armoniosa y protectora. \n
      Virgo: Escorpio y Virgo tienen una compatibilidad sólida basada en su enfoque práctico y analítico de la vida. Ambos signos valoran la estabilidad y la lealtad en una relación. La intensidad emocional de Escorpio se equilibra con la racionalidad y la organización de Virgo, lo que les permite construir una relación equilibrada y mutuamente beneficiosa. \n
      Capricornio: La compatibilidad entre Escorpio y Capricornio se basa en su determinación y ambición compartida. Ambos signos son persistentes y enfocados en alcanzar sus metas, lo que crea una base sólida para una relación duradera. La intensidad emocional de Escorpio se complementa con la estabilidad y la responsabilidad de Capricornio, formando una pareja poderosa y equilibrada.
    ''';
    case 'sagitario':
      return '''
      Aries: La compatibilidad entre Aries y Sagitario se basa en su energía y entusiasmo compartidos. Ambos signos son aventureros, apasionados y amantes de la libertad, lo que crea una relación dinámica y emocionante. Disfrutan de explorar juntos, tanto físicamente como emocionalmente, y se inspiran mutuamente para alcanzar sus metas y sueños. \n
      Leo: La relación entre Sagitario y Leo se destaca por su pasión y creatividad. Ambos signos de fuego, comparten una conexión ardiente y una energía vibrante. Se apoyan mutuamente en sus ambiciones y disfrutan de la vida social y las aventuras juntos. La compatibilidad entre Leo y Sagitario se basa en su capacidad para mantener viva la chispa y la emoción en su relación. \n
      Acuario: Sagitario y Acuario tienen una compatibilidad única basada en su amor por la libertad y la independencia. Ambos signos valoran la amistad y la igualdad en una relación, lo que les permite construir una conexión basada en el respeto mutuo y la comprensión. Disfrutan de explorar nuevas ideas y experiencias juntos, y se inspiran mutuamente para crecer y evolucionar. \n
      Géminis: La compatibilidad entre Sagitario y Géminis se basa en su curiosidad y espíritu aventurero compartidos. Ambos signos son comunicativos, intelectuales y amantes de la diversión. Disfrutan de la estimulación mental y emocional que se brindan mutuamente, y se mantienen interesados y emocionados en su relación a través de la exploración constante y la variedad de experiencias.
    ''';
    case 'capricornio':
      return '''
      Tauro: La compatibilidad entre Capricornio y Tauro es alta debido a su naturaleza práctica y realista. Ambos signos valoran la estabilidad, la seguridad y el trabajo duro. Forman una pareja sólida y confiable, que se apoya mutuamente en sus metas y ambiciones. La relación entre Capricornio y Tauro se basa en el respeto mutuo y la comprensión de sus necesidades y valores compartidos. \n
      Virgo: Capricornio y Virgo tienen una compatibilidad fuerte basada en su enfoque práctico y analítico de la vida. Ambos signos son trabajadores, responsables y detallistas. Se complementan mutuamente al equilibrar la eficiencia y la organización en su relación. La compatibilidad entre Virgo y Capricornio se basa en su capacidad para construir una base sólida y estable juntos. \n
      Escorpio: La relación entre Capricornio y Escorpio se destaca por su determinación y ambición compartida. Ambos signos son persistentes y enfocados en alcanzar sus metas, lo que crea una base sólida para una relación duradera. La intensidad emocional de Escorpio se complementa con la estabilidad y la responsabilidad de Capricornio, formando una pareja poderosa y equilibrada. \n
      Piscis: La compatibilidad entre Capricornio y Piscis se basa en su capacidad para equilibrar la practicidad y la sensibilidad. Capricornio aporta estabilidad, estructura y un enfoque realista, mientras que Piscis ofrece empatía, creatividad y una perspectiva emocional. Juntos, pueden formar una relación armoniosa y enriquecedora, donde se apoyan mutuamente en sus fortalezas y debilidades.
    ''';
    case 'acuario':
      return '''
      Géminis: La compatibilidad entre Acuario y Géminis es alta debido a su amor compartido por la comunicación, la creatividad y la exploración intelectual. Ambos signos son curiosos y disfrutan de la estimulación mental. Forman una pareja dinámica y estimulante, donde se inspiran mutuamente para aprender y crecer. La relación entre Géminis y Acuario se basa en la conexión mental y la amistad profunda. \n
      Libra: Acuario y Libra tienen una compatibilidad fuerte basada en su amor por la armonía, la justicia y la igualdad. Ambos signos valoran la conexión social y disfrutan de la compañía del otro. Se complementan mutuamente al equilibrar la comunicación y el entendimiento en su relación. La compatibilidad entre Libra y Acuario se basa en su capacidad para construir una relación equilibrada y de apoyo mutuo. \n
      Sagitario: La relación entre Acuario y Sagitario se destaca por su amor compartido por la libertad y la aventura. Ambos signos son independientes, optimistas y amantes de la diversión. Disfrutan de explorar nuevas ideas y experiencias juntos, y se inspiran mutuamente para crecer y evolucionar. La compatibilidad entre Sagitario y Acuario se basa en su capacidad para mantener viva la chispa y la emoción en su relación. \n
      Aries: La compatibilidad entre Acuario y Aries se basa en su energía y entusiasmo compartidos. Ambos signos son aventureros, apasionados y amantes de la libertad, lo que crea una relación dinámica y emocionante. Disfrutan de explorar juntos, tanto físicamente como emocionalmente, y se inspiran mutuamente para alcanzar sus metas y sueños. \n
    ''';
    case 'piscis':
      return '''
      Cáncer: La compatibilidad entre Piscis y Cáncer es alta debido a su profunda conexión emocional y su capacidad para comprender y apoyar las necesidades del otro. Ambos signos de agua, comparten una intuición y sensibilidad natural. La relación entre Cáncer y Piscis se basa en la empatía, el cuidado y el apoyo mutuo. \n
      Escorpio: Piscis y Escorpio tienen una compatibilidad fuerte basada en su intensidad emocional y su capacidad para conectarse en un nivel profundo. Ambos signos valoran la lealtad, la pasión y la sinceridad en una relación. La compatibilidad entre Escorpio y Piscis se basa en su capacidad para formar un vínculo poderoso y transformador. \n
      Tauro: La relación entre Piscis y Tauro se destaca por su equilibrio entre la practicidad y la sensibilidad. Tauro aporta estabilidad, seguridad y un enfoque realista, mientras que Piscis ofrece empatía, creatividad y una perspectiva emocional. Juntos, pueden formar una relación armoniosa y enriquecedora, donde se apoyan mutuamente en sus fortalezas y debilidades. \n
      Virgo: La compatibilidad entre Piscis y Virgo se basa en su capacidad para equilibrar la practicidad y la sensibilidad. Virgo aporta estructura, organización y un enfoque realista, mientras que Piscis ofrece empatía, creatividad y una perspectiva emocional. Juntos, pueden formar una relación armoniosa y enriquecedora, donde se apoyan mutuamente en sus fortalezas y debilidades.
    ''';
    default:
      return 'Descripción no disponible para este signo.';
  }
}

class ZodiacCard extends StatelessWidget {
  final String signo;
  final String descripcion;

  const ZodiacCard({
    required this.signo,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              signo,
              style: GoogleFonts.firaSans(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              descripcion,
              style: GoogleFonts.firaSans(
                fontSize: 18,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

