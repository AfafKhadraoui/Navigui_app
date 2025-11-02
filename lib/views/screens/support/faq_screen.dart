import 'package:flutter/material.dart';

/// FAQ Screen
/// Frequently asked questions
class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Frequently Asked Questions')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildFaqItem(
            'How do I apply for a job?',
            'Browse jobs, click on a job card to view details, then tap the "Apply Now" button. Fill in the application form and submit.',
          ),
          _buildFaqItem(
            'How do I post a job?',
            'Go to your employer dashboard and tap the + button. Fill in the job details form and publish.',
          ),
          _buildFaqItem(
            'How do payments work?',
            'Payment is arranged directly between employer and student. Navigui does not handle payments.',
          ),
          _buildFaqItem(
            'Can I edit my application after submitting?',
            'No, but you can withdraw and reapply if the job is still active.',
          ),
          _buildFaqItem(
            'How do I change my account type?',
            'Contact support to change from student to employer account or vice versa.',
          ),
          // TODO: Add more FAQ items
        ],
      ),
    );
  }

  Widget _buildFaqItem(String question, String answer) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ExpansionTile(
        title: Text(
          question,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        children: [
          Padding(padding: const EdgeInsets.all(16), child: Text(answer)),
        ],
      ),
    );
  }
}
