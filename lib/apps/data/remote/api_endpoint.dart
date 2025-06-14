class ApiEndpoint {
  static const String domain = 'http://192.168.101.9:8000';
  static const String baseUrl = '$domain/api';

  // Auth
  static const String signIn = '/token/';

  // Prediction (post and get)
  static const String predict = '/predict/';
}
