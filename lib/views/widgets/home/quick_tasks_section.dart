import 'package:flutter/material.dart';
import '../../../commons/themes/style_simple/colors.dart';
import '../../../commons/themes/style_simple/styles.dart';
import '../../../utils/mock_data.dart';
import '../../../logic/models/job_model.dart';

/// Quick Tasks Section Widget
/// Purpose: Display one-time tasks that can be completed quickly
/// Note: Tasks use JobModel but with jobType = 'task' or 'one_time'
///
/// Features to implement:
/// - Load tasks from MockData.loadJobs()
/// - Filter jobs where jobType == 'task' or jobType == 'one_time'
/// - Display in horizontal scrolling cards (250px wide)
/// - Show: task icon, title, brief description, pay, location
/// - Navigate to task details on card tap
/// - "See All" button to navigate to all quick tasks
///
/// UI Requirements:
/// - Colored icon background (secondary color)
/// - Task icon (Icons.task_alt)
/// - 150px card height
/// - Show pay and location at bottom
/// - Loading state with CircularProgressIndicator
/// - Empty state message if no tasks
class QuickTasksSection extends StatelessWidget {
  const QuickTasksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // TODO: Add section header with "Quick Tasks" title and "See All" button

        // TODO: Add horizontal ListView.builder
        // - Height: 150px
        // - Scroll direction: Axis.horizontal
        // - Card width: 250px
        // - Load and filter tasks from MockData
        // - Show loading/empty states
        // - Build task cards with icon, title, description, pay, location
      ],
    );
  }
}
