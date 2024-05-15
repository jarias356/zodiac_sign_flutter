import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zodiac_sign_flutter/commons/database/database.dart';
import 'package:zodiac_sign_flutter/core/core.dart';
import 'package:zodiac_sign_flutter/di/preference_module.dart';

class ZodiacSign {
  ZodiacSign() {
    _db();
    _init();
  }

  void _db() async {
    Get.put<PreferenceModule>(PreferenceModule(await SharedPreferences.getInstance()));
    AppDB.getInstance();
  }

  void _init() {
    Get.put<DbAndDao>(DbAndDao());
    Get.put<LoginDomain>(LoginDomain());
    Get.put<LoginRepository>(LoginRepository());
    Get.put<LoginViewModel>(LoginViewModel());
  }

}