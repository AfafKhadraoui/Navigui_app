import 'package:flutter/material.dart';

/// Job type badge widget
/// Shows Part-time or Task
class JobTypeBadge extends StatelessWidget {
  final String type;

  const JobTypeBadge({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    final isPartTime = type.toLowerCase() == 'part_time';
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: isPartTime ? Colors.blue : Colors.green,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        isPartTime ? 'Part-time' : 'Task',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
