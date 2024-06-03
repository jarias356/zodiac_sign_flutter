import 'package:zodiac_sign_flutter/commons/generals_models/zodiac_sign.dart';

class LoginDomain {
  List<ZodiacSign> createListZodiacSigns() {
    return [
      ZodiacSign(name: 'Aries', description: 'The Ram', dateRange: '21 - 19', month: 'March/April'),
      ZodiacSign(name: 'Taurus', description: 'The Bull', dateRange: '20 - 20', month: 'April/May'),
      ZodiacSign(name: 'Gemini', description: 'The Twins', dateRange: '21 - 20', month: 'May/June'),
      ZodiacSign(name: 'Cancer', description: 'The Crab', dateRange: '21 - 22', month: 'June/July'),
      ZodiacSign(name: 'Leo', description: 'The Lion', dateRange: '23 - 22', month: 'July/August'),
      ZodiacSign(name: 'Virgo', description: 'The Maiden', dateRange: '23 - 22', month: 'August/September'),
      ZodiacSign(name: 'Libra', description: 'The Scales', dateRange: '23 - 22', month: 'September/October'),
      ZodiacSign(name: 'Scorpio', description: 'The Scorpion', dateRange: '23 - 21', month: 'October/November'),
      ZodiacSign(name: 'Sagittarius', description: 'The Archer', dateRange: '22 - 21', month: 'November/December'),
      ZodiacSign(name: 'Capricorn', description: 'The Sea-Goat', dateRange: '22 - 19', month: 'December/January'),
      ZodiacSign(name: 'Aquarius', description: 'The Water-Bearer', dateRange: '20 - 18', month: 'January/February'),
      ZodiacSign(name: 'Pisces', description: 'The Fish', dateRange: '19 - 20', month: 'February/March'),
    ];

  }

  List<String> createMonthList() {
    return [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
  }


}