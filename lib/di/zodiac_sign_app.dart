import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zodiac_sign_flutter/commons/database/database.dart';
import 'package:zodiac_sign_flutter/commons/utils/list_utils.dart';
import 'package:zodiac_sign_flutter/core/core.dart';

Future<void> initStorage() async  {
  AppDB.getInstance();
  await Get.putAsync(() => SharedPreferences.getInstance());
}

void initKoin()  {
  Get.put<DbAndDao>(DbAndDao());
  Get.put<LoginDomain>(LoginDomain());
  Get.put<LoginRepository>(LoginRepository());
  Get.put<LoginViewModel>(LoginViewModel());
}
