import 'package:get/get.dart';
import 'package:zodiac_sign_flutter/commons/database/app_db.dart';
import 'package:zodiac_sign_flutter/commons/database/database.dart';
import 'package:zodiac_sign_flutter/core/core.dart';

import '../utils/constants.dart';

class ZodiacSign {
  ZodiacSign() {
    _db();
    _init();
  }

  void _db() async {
    AppDB.getInstance();
  }

  void _init() {
    Get.put<DbAndDao>(DbAndDao());
    Get.put<LoginDomain>(LoginDomain());
    Get.put<LoginRepository>(LoginRepository());
    Get.put<LoginViewModel>(LoginViewModel());
  }

}