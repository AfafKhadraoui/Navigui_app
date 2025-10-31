import 'package:flutter/material.dart';

/// Review card widget
/// Displays a single review
class ReviewCard extends StatelessWidget {
  final String reviewerName;
  final double rating;
  final String? comment;
  final DateTime date;

  const ReviewCard({
    super.key,
    required this.reviewerName,
    required this.rating,
    this.comment,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement review card design
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  reviewerName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('★ $rating'),
              ],
            ),
            if (comment != null) ...[const SizedBox(height: 8), Text(comment!)],
          ],
        ),
      ),
    );
  }
}
