import 'package:flutter/material.dart';

/// Application card widget (student view)
class ApplicationCard extends StatelessWidget {
  final String jobTitle;
  final String company;
  final String status;
  final DateTime appliedDate;
  final VoidCallback onTap;

  const ApplicationCard({
    super.key,
    required this.jobTitle,
    required this.company,
    required this.status,
    required this.appliedDate,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color statusColor;
    switch (status.toLowerCase()) {
      case 'accepted':
        statusColor = Colors.green;
        break;
      case 'rejected':
        statusColor = Colors.red;
        break;
      default:
        statusColor = Colors.orange;
    }

    return Card(
      child: ListTile(
        title: Text(jobTitle),
        subtitle: Text(company),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: statusColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                status,
                style: const TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}
