/// App configuration constants
/// Contains API URLs, app name, version, and other configuration settings
class AppConfig {
  // App Information
  static const String appName = 'Navigui';
  static const String appVersion = '1.0.0';

  // API Configuration
  //static const String baseUrl = 'https://api.navigui.com';
  //static const String apiVersion = 'v1';

  // API Endpoints
  //static const String authEndpoint = '$baseUrl/$apiVersion/auth';
  //static const String jobsEndpoint = '$baseUrl/$apiVersion/jobs';
  //static const String usersEndpoint = '$baseUrl/$apiVersion/users';
  //static const String applicationsEndpoint =
    //  '$baseUrl/$apiVersion/applications';

  // Feature Flags
  static const bool enableNotifications = true;
  static const bool enableAnalytics = true;

  // App Settings
  static const int requestTimeout = 30; // seconds
  static const int maxRetries = 3;
}
