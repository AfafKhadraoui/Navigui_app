import 'package:flutter/material.dart';

/// Job card widget for listings
/// Used in home and jobs page
class JobCard extends StatelessWidget {
  final String title;
  final String company;
  final String location;
  final String pay;
  final bool isUrgent;
  final VoidCallback onTap;

  const JobCard({
    super.key,
    required this.title,
    required this.company,
    required this.location,
    required this.pay,
    this.isUrgent = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement job card design
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text('$company • $location'),
        trailing: Text(pay),
        onTap: onTap,
      ),
    );
  }
}
