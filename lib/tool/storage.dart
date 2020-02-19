import 'package:shared_preferences/shared_preferences.dart';

class StorageData {
  final String auth_token = "auth_token";
  final String mLogin = "login";

  Future<void> setAuthToken(String auth_token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.auth_token, auth_token);
  }

  Future<String> getAuthToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String auth_token;
    auth_token = pref.getString(this.auth_token) ?? null;
    return auth_token;
  }

  Future<void> setLogin(bool login) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(this.mLogin, login);
  }

  Future<bool> isLogin() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    bool isLogin = pref.getBool(this.mLogin) ?? false;
    return isLogin;
  }

  Future clear() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove(this.auth_token);
  }
}
