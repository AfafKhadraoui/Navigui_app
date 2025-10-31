import 'package:flutter/material.dart';

/// About Navigui Screen
/// Information about the app
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Navigui')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(Icons.work, size: 50, color: Colors.white),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Navigui',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Version 1.0.0',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),

          const Text(
            'About Us',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Navigui is a platform connecting students with part-time jobs and quick tasks in Algeria. '
            'We help students find flexible work opportunities while helping employers find talented, motivated workers.',
            style: TextStyle(height: 1.5),
          ),
          const SizedBox(height: 24),

          const Text(
            'Our Mission',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'To empower students with work opportunities that fit their schedules and help them gain '
            'real-world experience while supporting local businesses.',
            style: TextStyle(height: 1.5),
          ),
          const SizedBox(height: 24),

          Card(
            child: ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Email'),
              subtitle: const Text('support@navigui.com'),
              onTap: () {
                // TODO: Open email app
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.language),
              title: const Text('Website'),
              subtitle: const Text('www.navigui.com'),
              onTap: () {
                // TODO: Open website
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text('Privacy Policy'),
              onTap: () {
                // TODO: Navigate to privacy policy
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.description),
              title: const Text('Terms of Service'),
              onTap: () {
                // TODO: Navigate to terms
              },
            ),
          ),

          const SizedBox(height: 24),
          const Center(
            child: Text(
              '© 2025 Navigui. All rights reserved.',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
