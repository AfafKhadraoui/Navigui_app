import 'package:flutter/material.dart';

/// Report Screen
/// Generic report form for jobs, users, or reviews
class ReportScreen extends StatefulWidget {
  final String reportType; // 'job', 'user', 'review'
  final String reportedId;

  const ReportScreen({
    super.key,
    required this.reportType,
    required this.reportedId,
  });

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  final _formKey = GlobalKey<FormState>();
  final _descriptionController = TextEditingController();
  String? _selectedReason;

  final Map<String, List<String>> _reportReasons = {
    'job': [
      'Fake/Scam Job',
      'Inappropriate Content',
      'Discriminatory',
      'Misleading Information',
      'Other',
    ],
    'user': [
      'Harassment',
      'Spam',
      'Fake Profile',
      'Inappropriate Behavior',
      'Other',
    ],
    'review': [
      'False Information',
      'Spam',
      'Offensive Language',
      'Not Relevant',
      'Other',
    ],
  };

  @override
  void dispose() {
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final reasons = _reportReasons[widget.reportType] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text('Report ${widget.reportType.capitalize()}')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Icon(Icons.report, size: 60, color: Colors.red),
            const SizedBox(height: 16),
            const Text(
              'Report Issue',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'Help us keep Navigui safe by reporting any issues you encounter.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),

            const Text(
              'Reason for report',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...reasons.map(
              (reason) => RadioListTile<String>(
                title: Text(reason),
                value: reason,
                groupValue: _selectedReason,
                onChanged: (value) => setState(() => _selectedReason = value),
              ),
            ),

            const SizedBox(height: 16),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Additional Details (Optional)',
                hintText: 'Please provide more information...',
                alignLabelWithHint: true,
              ),
              maxLines: 5,
            ),
            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: _selectedReason != null ? _submitReport : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Text('Submit Report'),
              ),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
          ],
        ),
      ),
    );
  }

  void _submitReport() {
    // TODO: Implement report submission
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Thank you for your report. We\'ll review it shortly.'),
        backgroundColor: Colors.green,
      ),
    );
    Navigator.pop(context);
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
