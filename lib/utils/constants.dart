/// Utility constants
class UtilConstants {
  // API Status Codes
  static const int statusOk = 200;
  static const int statusCreated = 201;
  static const int statusBadRequest = 400;
  static const int statusUnauthorized = 401;
  static const int statusNotFound = 404;
  static const int statusServerError = 500;

  // Storage Keys
  static const String keyAuthToken = 'auth_token';
  static const String keyUserId = 'user_id';
  static const String keyUserType = 'user_type';
  static const String keyLanguage = 'language';
  static const String keyThemeMode = 'theme_mode';

  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;
}
