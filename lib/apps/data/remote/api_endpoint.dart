class ApiEndpoint {
  static const String domain = 'http://192.168.101.9:8000';
  static const String baseUrl = '$domain/api';

  // Auth
  static const String signIn = '/token/';
  static const String signUp = '/signUp';

  // Prediction
  static const String predict = '/predict/';

  // Plants
  static const String plants = '/plants';
  static const String plantById =
      '/plants/'; // untuk detail / update / delete: /plants/{id}

  // History
  static const String history = '/history/';
}
