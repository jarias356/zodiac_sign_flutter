import 'package:shared_preferences/shared_preferences.dart';

class PreferenceModule {
  late final SharedPreferences _sharedPreference;

  void createPreference() async {
   _sharedPreference = await SharedPreferences.getInstance();
  }

  void setString(String key, String value)  {
    try {
      _sharedPreference.setString(key, value);
    } catch (e) {

      /** TODO: Save catch and error in table **/
      print(e);
    }
  }



}
