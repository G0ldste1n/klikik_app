
import 'package:shared_preferences/shared_preferences.dart';

const String TOKEN = "token";
const String USER_ID = "User ID";
const String USERNAME = "username";

class UserInfo{
  Future setToken(String value) async{
    final SharedPreferences pref = (await SharedPreferences) as SharedPreferences ;
    return pref.setString(TOKEN, value);
  }
  Future<String?> getToken() async{
    final SharedPreferences pref = await SharedPreferences;
    return pref.getString(TOKEN);
  }
  Future setUserId(String value)
}