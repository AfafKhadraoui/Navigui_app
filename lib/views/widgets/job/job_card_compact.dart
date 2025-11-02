import 'package:flutter/material.dart';

/// Compact job card widget
/// Smaller version for lists
class JobCardCompact extends StatelessWidget {
  final String title;
  final String company;
  final String pay;
  final VoidCallback onTap;

  const JobCardCompact({
    super.key,
    required this.title,
    required this.company,
    required this.pay,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement compact job card design
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(company),
        trailing: Text(pay),
        onTap: onTap,
      ),
    );
  }
}
