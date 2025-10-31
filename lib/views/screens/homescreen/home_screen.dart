import 'package:flutter/material.dart';
import '../../../commons/themes/style_simple/colors.dart';
import '../../../commons/themes/style_simple/styles.dart';
import '../../../utils/mock_data.dart';
import '../../widgets/home/part_time_jobs_section.dart';
import '../../widgets/home/quick_tasks_section.dart';
import '../../widgets/home/services_section.dart';
import '../../widgets/home/urgent_jobs_section.dart';
import '../../widgets/home/educational_content_section.dart';

/// Home Screen - Main landing page
/// Purpose: Display overview of available jobs, services, and educational content
///
/// Sections to implement:
/// - Welcome header with user greeting
/// - Search bar for jobs and services
/// - Urgent jobs section (jobs with isUrgent=true)
/// - Part-time jobs section (horizontal scroll)
/// - Quick tasks section (one-time tasks)
/// - Services section (Fiverr-like marketplace)
/// - Educational content section (articles/tips)
///
/// Data: Load from MockData.loadJobs(), MockData.loadServices()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // TODO: Add state variables for data loading
  // Example: bool _isLoading = true;
  // Example: List<JobModel> _jobs = [];

  @override
  void initState() {
    super.initState();
    // TODO: Load mock data here
    // Call MockData.loadJobs(), MockData.loadServices()
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // TODO: Implement SliverAppBar with:
            // - Welcome message
            // - Notification icon
            // - Search bar

            // TODO: Add content sections
            SliverToBoxAdapter(
              child: Column(
                children: [
                  // TODO: Add UrgentJobsSection widget
                  // TODO: Add PartTimeJobsSection widget
                  // TODO: Add QuickTasksSection widget
                  // TODO: Add ServicesSection widget
                  // TODO: Add EducationalContentSection widget
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
