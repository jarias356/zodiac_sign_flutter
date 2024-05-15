import 'package:get/get.dart';
import 'package:zodiac_sign_flutter/commons/database/database.dart';
import 'package:zodiac_sign_flutter/core/core.dart';
import 'package:zodiac_sign_flutter/di/preference_module.dart';

class ZodiacSign {
  ZodiacSign._();

  static Future<ZodiacSign> create() async {
    var zodiacSign = ZodiacSign._();
    await zodiacSign._init();
    return zodiacSign;
  }

  Future<void> _init() async {
    AppDB.getInstance();
    // Get.putAsync<PreferenceModule>(() => PreferenceModule().init());
    Get.put<DbAndDao>(DbAndDao());
    Get.put<LoginDomain>(LoginDomain());
    Get.put<LoginRepository>(LoginRepository());
    Get.put<LoginViewModel>(LoginViewModel());
  }
}
