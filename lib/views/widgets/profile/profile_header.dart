import 'package:flutter/material.dart';

/// Profile header widget
class ProfileHeader extends StatelessWidget {
  final String name;
  final String? photoUrl;
  final String subtitle;
  final double rating;

  const ProfileHeader({
    super.key,
    required this.name,
    this.photoUrl,
    required this.subtitle,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement profile header design
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: photoUrl != null ? NetworkImage(photoUrl!) : null,
          child: photoUrl == null ? const Icon(Icons.person, size: 50) : null,
        ),
        const SizedBox(height: 16),
        Text(
          name,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(subtitle),
        Text('★ $rating'),
      ],
    );
  }
}
