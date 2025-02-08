

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefece{
  static Future<void> storeName(String name) async {
    SharedPreferences prefs= await SharedPreferences.getInstance();
    prefs.setString("name", name);
  }

  static Future<String?> loadName()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("name");
  }

  static Future<bool> removeName ()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("name");
  }
}