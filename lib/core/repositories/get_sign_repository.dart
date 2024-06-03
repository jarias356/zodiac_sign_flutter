import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zodiac_sign_flutter/commons/generals_models/zodiac_sign.dart';
import 'package:zodiac_sign_flutter/commons/utils/list_utils.dart';
import 'package:zodiac_sign_flutter/commons/utils/preference_keys.dart';

class GetSignRepository {
  final SharedPreferences _sharedPreferences = Get.find<SharedPreferences>();

  void saveDateInPreference(DateTime date) {
    _sharedPreferences.setString(
        userDatePrefKey, "${date.day}/${date.month}/${date.year}");
  }

  ZodiacSign? getMyZodiacSign(int day, int month) {
    List<ZodiacSign> lstSigns = ListUtils.lstAllSigns;
    Iterable<ZodiacSign> zodiacByMonth = lstSigns.where(
            (element) => element.month.split("/").contains(month.toString())
    );

    ZodiacSign? zodiacByDay;
    for (var zodiac in zodiacByMonth) {
      List<String> dateRange = zodiac.dateRange.split(', ');
      int startDay = int.parse(dateRange.first);
      int endDay = int.parse(dateRange.last);

      if ((startDay <= endDay && day >= startDay && day <= endDay) ||
          (startDay > endDay && (day >= startDay || day <= endDay))) {
        zodiacByDay = zodiac;
        break;
      }
    }

    return zodiacByDay;
  }

  String getDataUser() {
    return _sharedPreferences.getString(userDatePrefKey) ?? "";
  }
}
