/// App-wide constants
/// Contains strings, numbers, and other constant values used throughout the app

class AppConstants {
  // Strings
  static const String defaultLanguage = 'en';
  static const String defaultCurrency = 'DZD';

  // Numbers
  static const int minPasswordLength = 8;
  static const int maxBioLength = 500;
  static const int maxJobDescriptionLength = 2000;

  // Job Categories
  static const List<String> jobCategories = [
    'Tutoring',
    'Delivery',
    'Translation',
    'Design',
    'Programming',
    'Writing',
    'Marketing',
    'Other',
  ];

  // Application Status
  static const String statusPending = 'pending';
  static const String statusAccepted = 'accepted';
  static const String statusRejected = 'rejected';

  // Job Types
  static const String jobTypePartTime = 'part_time';
  static const String jobTypeTask = 'task';
}
