import 'package:shared_preferences/shared_preferences.dart';

class PreferenceModule {
  late final SharedPreferences _preference;


  Future<SharedPreferences> init() async {
    _preference = await SharedPreferences.getInstance();
    return _preference;
  }

  void setString(String key, String value) async {
    _preference.setString(key, value);
  }
  String getString(String key) {
    return _preference.getString(key) ?? "";
  }

}

