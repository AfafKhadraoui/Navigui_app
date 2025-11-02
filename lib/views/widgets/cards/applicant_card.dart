import 'package:flutter/material.dart';

/// Applicant card widget (employer view)
class ApplicantCard extends StatelessWidget {
  final String studentName;
  final String university;
  final double rating;
  final VoidCallback onTap;

  const ApplicantCard({
    super.key,
    required this.studentName,
    required this.university,
    required this.rating,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.person)),
        title: Text(studentName),
        subtitle: Text(university),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.star, color: Colors.amber, size: 16),
            Text(' $rating'),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}
