// ignore_for_file: camel_case_types, prefer_final_fields

import 'package:hitung_angka/data/local_storage.dart';

class DataNumber{
  static int number = 0;

  static Future<void> init() async{
    final int? storedData = await LocalStorage.getInt('data');
    DataNumber.number = storedData ?? 20;
    if(storedData == null){
      LocalStorage.pref?.setInt('data', DataNumber.number);
    }
  }

  static Future<void> save() async{
    LocalStorage.setInt('data', DataNumber.number);
  }

  static int get(){
    return DataNumber.number;
  }

  static Future<void> add(int valueAdd) async {
    if(DataNumber.number + valueAdd >= 0){
      DataNumber.number += valueAdd;
      await DataNumber.save();
    }
  }

  static Future<void> subtract(int valueSubt) async{
    if(DataNumber.number - valueSubt >= 0){
      DataNumber.number -= valueSubt;
      await DataNumber.save();
    }
  }

  static Future<void> setTo(int value) async{
    if(value >= 0){
      DataNumber.number = value;
      await DataNumber.save();
    }
  }

}