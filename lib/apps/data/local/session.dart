import 'package:shared_preferences/shared_preferences.dart';

class Session {
  static const token = 'TOKEN';
  static const refreshToken = 'REFRESH_TOKEN';

  static const isSingIn = 'IS_SIGN_IN';
  static const name = 'NAME';
  static const email = 'EMAIL';

  static Future<String> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(Session.token) ?? '';
  }

  static Future<bool> checkLogin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(Session.isSingIn) ?? false;
  }

  static Future<String> getEmail() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(Session.email) ?? '';
  }

  static Future<String> getName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(Session.name) ?? '';
  }

  static Future<bool> isSignIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(Session.isSingIn) ?? false;
  }

  static Future<bool> saveSession({
    required String token,
    required String refreshToken,
  }) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(Session.token, token);
    await prefs.setString(Session.refreshToken, refreshToken);
    return await prefs.setBool(Session.isSingIn, true);
  }

  static Future<bool> clearSession() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.clear();
  }
}
