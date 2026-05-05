import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage
{
  static int number = 0;
  
  static bool declare = false;
  static SharedPreferences? pref;

  static Future<void> init() async{
    if(!declare){
      LocalStorage.pref = await SharedPreferences.getInstance();
      int? data = LocalStorage.pref?.getInt('data');
      if(data != null){
        LocalStorage.number = data;
      }
      declare = true;

    }
  }

  static Future<int> getNumber() async{
    if(!declare){
      await init();
    }
    int? data = LocalStorage.pref?.getInt('data');
    if(data == null){
      return 0;
    }
    return data;
  }

  static void updateStorage(){
    pref?.setInt('data', LocalStorage.number);
  }

  static void add(int value){
    number += value;
    updateStorage();
  }

  static void set(int value){
    number = value;
    updateStorage();
  }

}