import 'package:flutter/material.dart';

/// Notification item card widget
class NotificationCard extends StatelessWidget {
  final String title;
  final String message;
  final bool isRead;
  final DateTime date;
  final VoidCallback onTap;

  const NotificationCard({
    super.key,
    required this.title,
    required this.message,
    required this.isRead,
    required this.date,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isRead ? Colors.white : Colors.blue.shade50,
      child: ListTile(
        leading: Icon(
          Icons.notifications,
          color: isRead ? Colors.grey : Colors.blue,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: isRead ? FontWeight.normal : FontWeight.bold,
          ),
        ),
        subtitle: Text(message),
        trailing: Text(_formatDate(date), style: const TextStyle(fontSize: 12)),
        onTap: onTap,
      ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else {
      return '${difference.inMinutes}m ago';
    }
  }
}
