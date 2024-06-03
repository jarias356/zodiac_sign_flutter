import 'package:zodiac_sign_flutter/commons/generals_models/zodiac_sign.dart';

class LoginDomain {
  List<ZodiacSign> createListZodiacSigns() {
    return [
      ZodiacSign(name: 'Aries', description: 'The Ram', dateRange: '21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19', month: '03/04'),
      ZodiacSign(name: 'Taurus', description: 'The Bull', dateRange: '20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20', month: '04/05'),
      ZodiacSign(name: 'Gemini', description: 'The Twins', dateRange: '21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20', month: '05/06'),
      ZodiacSign(name: 'Cancer', description: 'The Crab', dateRange: '21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22', month: '06/07'),
      ZodiacSign(name: 'Leo', description: 'The Lion', dateRange: '23, 24, 25, 26, 27, 28, 29, 30, 31, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22', month: '07/08'),
      ZodiacSign(name: 'Virgo', description: 'The Maiden', dateRange: '23, 24, 25, 26, 27, 28, 29, 30, 31, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22', month: '08/09'),
      ZodiacSign(name: 'Libra', description: 'The Scales', dateRange: '23, 24, 25, 26, 27, 28, 29, 30, 31, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22', month: '09/10'),
      ZodiacSign(name: 'Scorpio', description: 'The Scorpion', dateRange: '23, 24, 25, 26, 27, 28, 29, 30, 31, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21', month: '10/11'),
      ZodiacSign(name: 'Sagittarius', description: 'The Archer', dateRange: '22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21', month: '11/12'),
      ZodiacSign(name: 'Capricorn', description: 'The Sea-Goat', dateRange: '22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19', month: '12/01'),
      ZodiacSign(name: 'Aquarius', description: 'The Water-Bearer', dateRange: '20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18', month: '01/02'),
      ZodiacSign(name: 'Pisces', description: 'The Fish', dateRange: '19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20', month: '02/03'),
    ];
  }

}