import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRepository {
  final SharedPreferences _sharedPreferences = Get.find<SharedPreferences>();

  void saveUserName(String userNameValue) {
    _sharedPreferences.setString("userName", userNameValue);
    print("PreferenceTest ${_sharedPreferences.getString("userName")}");
  }

}