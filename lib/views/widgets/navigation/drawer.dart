import 'package:flutter/material.dart';

/// Side drawer widget (if needed)
class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Implement drawer if needed
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Navigui'),
          ),
          // Add drawer items here
        ],
      ),
    );
  }
}
