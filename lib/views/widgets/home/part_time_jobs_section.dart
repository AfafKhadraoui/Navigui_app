import 'package:flutter/material.dart';
import '../../../commons/themes/style_simple/colors.dart';
import '../../../commons/themes/style_simple/styles.dart';
import '../../../utils/mock_data.dart';
import '../../../logic/models/job_model.dart';

/// Part-Time Jobs Section Widget
/// Purpose: Display horizontal scrolling list of part-time job opportunities
///
/// Features to implement:
/// - Load part-time jobs from MockData.loadJobs()
/// - Filter jobs where jobType == 'part_time' and status == 'active'
/// - Display in horizontal scrolling cards (300px wide)
/// - Show: job title, category, location, pay, applicants count
/// - Add "URGENT" badge if job.isUrgent == true
/// - Navigate to job details on card tap
/// - "See All" button to navigate to filtered jobs page
///
/// UI Requirements:
/// - Card elevation and rounded corners
/// - Pay in DA (Algerian Dinar) with payment type
/// - Location with icon
/// - Loading state with CircularProgressIndicator
/// - Empty state message
class PartTimeJobsSection extends StatefulWidget {
  const PartTimeJobsSection({super.key});

  @override
  State<PartTimeJobsSection> createState() => _PartTimeJobsSectionState();
}

class _PartTimeJobsSectionState extends State<PartTimeJobsSection> {
  // TODO: Add state variables
  // List<JobModel> _jobs = [];
  // bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // TODO: Load jobs from MockData
    // Call _loadJobs() method
  }

  // TODO: Implement _loadJobs() method
  // - Use MockData.loadJobs() to get all jobs
  // - Filter by jobType == 'part_time' and status == 'active'
  // - Take first 10 jobs
  // - Update state with setState()

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // TODO: Add section header with "Part-Time Jobs" title and "See All" button

        // TODO: Add horizontal ListView.builder
        // - Height: 200px
        // - Scroll direction: Axis.horizontal
        // - Card width: 300px
        // - Show loading spinner if _isLoading
        // - Show empty message if _jobs.isEmpty
        // - Build job cards with all details
      ],
    );
  }
}
