import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage
{
  static SharedPreferences? pref;

  static Future<void> init() async{
    LocalStorage.pref = await SharedPreferences.getInstance();
    LocalStorage.pref?.setInt('data', 0);
  }

  static Future<void> setInt(String key, int value)async {
    LocalStorage.pref?.setInt(key, value);
  }

  static Future<int?> getInt(String key) async {
    return LocalStorage.pref?.getInt(key) ?? 0;
  }

}