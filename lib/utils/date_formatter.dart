/// Date formatting utilities
/// Note: Add intl package to pubspec.yaml for advanced formatting
class DateFormatter {
  /// Format date to readable string (e.g., "Jan 15, 2024")
  static String formatDate(DateTime date) {
    // TODO: Use intl package DateFormat when added to dependencies
    return '${_getMonthName(date.month)} ${date.day}, ${date.year}';
  }

  /// Format date with time (e.g., "Jan 15, 2024 at 3:30 PM")
  static String formatDateTime(DateTime date) {
    return '${formatDate(date)} at ${formatTime(date)}';
  }

  /// Format time only (e.g., "3:30 PM")
  static String formatTime(DateTime date) {
    final hour = date.hour > 12
        ? date.hour - 12
        : (date.hour == 0 ? 12 : date.hour);
    final period = date.hour >= 12 ? 'PM' : 'AM';
    return '$hour:${date.minute.toString().padLeft(2, '0')} $period';
  }

  static String _getMonthName(int month) {
    const months = [
      '',
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return months[month];
  }

  /// Format date for display (e.g., "Today", "Yesterday", or date)
  static String formatDateRelative(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final dateToCheck = DateTime(date.year, date.month, date.day);

    if (dateToCheck == today) {
      return 'Today';
    } else if (dateToCheck == yesterday) {
      return 'Yesterday';
    } else {
      return formatDate(date);
    }
  }
}
