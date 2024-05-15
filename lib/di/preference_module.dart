import 'package:shared_preferences/shared_preferences.dart';

class PreferenceModule {
  late final SharedPreferences _sharedPreference;

  PreferenceModule(SharedPreferences sharedPreference) {
    _sharedPreference = sharedPreference;
  }

  void setString(String key, String value)  {
    _sharedPreference.setString(key, value);
  }
  String? getString(String key) {
    return _sharedPreference.getString(key);
  }



}
