import 'package:flutter/material.dart';

/// Educational content card widget
class EducationCard extends StatelessWidget {
  final String title;
  final String category;
  final String? imageUrl;
  final int readTime;
  final VoidCallback onTap;

  const EducationCard({
    super.key,
    required this.title,
    required this.category,
    this.imageUrl,
    required this.readTime,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement education card design
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (imageUrl != null)
              Image.network(imageUrl!, height: 150, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(category, style: const TextStyle(color: Colors.blue)),
                  const SizedBox(height: 8),
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text('$readTime min read'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
