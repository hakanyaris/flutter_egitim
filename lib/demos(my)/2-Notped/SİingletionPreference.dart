import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesInstance {
  static late SharedPreferences preferences;
  // static SharedPreferencesInstance? _instance;
  // static Future<SharedPreferencesInstance> get instance async {
  //   preferences = await SharedPreferences.getInstance();
  //   if (_instance == null) _instance = SharedPreferencesInstance._init();
  //   return _instance!;
  // }

  // SharedPreferencesInstance._init();

  static void SharedInstance() async {
    preferences = await SharedPreferences.getInstance();
  }
}
