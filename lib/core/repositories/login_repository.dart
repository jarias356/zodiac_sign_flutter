import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zodiac_sign_flutter/commons/utils/list_utils.dart';
import 'package:zodiac_sign_flutter/commons/utils/preference_keys.dart';
import 'package:zodiac_sign_flutter/core/core.dart';

class LoginRepository {
  final SharedPreferences _sharedPreferences = Get.find<SharedPreferences>();

  final LoginDomain _loginDomain = Get.find<LoginDomain>();


  void saveUserName(String userNameValue) {
    ListUtils.lstAllSigns = _loginDomain.createListZodiacSigns();
    ListUtils.lstMonths = _loginDomain.createMonthList();

    _sharedPreferences.setString(userNamePrefKey, userNameValue);
  }

}