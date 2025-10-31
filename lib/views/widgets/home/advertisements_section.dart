import 'package:flutter/material.dart';

/// Advertisements section for home screen
class AdvertisementsSection extends StatelessWidget {
  const AdvertisementsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.amber[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.amber),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber),
              const SizedBox(width: 8),
              const Text(
                'Sponsored',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.ad_units, size: 50),
                  SizedBox(height: 8),
                  Text('Advertisement Space'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Ad content or banner goes here',
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
