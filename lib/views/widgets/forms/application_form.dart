import 'package:flutter/material.dart';

/// Application form widget
/// Used for job applications
class ApplicationForm extends StatelessWidget {
  final TextEditingController coverMessageController;
  final VoidCallback onSubmit;

  const ApplicationForm({
    super.key,
    required this.coverMessageController,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement application form
    return Column(
      children: [
        TextFormField(
          controller: coverMessageController,
          maxLines: 5,
          decoration: const InputDecoration(
            labelText: 'Cover Message',
            hintText: 'Tell the employer why you\'re a good fit...',
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: onSubmit,
          child: const Text('Submit Application'),
        ),
      ],
    );
  }
}
