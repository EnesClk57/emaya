abstract class AppConfig {
//  URL de base pour appel API maya-api
// ignore: constant_identifier_names
  static const String API_BASE_URL = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://10.0.2.2:8000/api/',
  );


//  URL de base pour chargement images de API maya-api
// ignore: constant_identifier_names
  static const String API_BASE_URL_IMG = String.fromEnvironment(
    'API_BASE_URL_IMG',
    defaultValue: 'http://10.0.2.2/maya-api/public',
  );
}
