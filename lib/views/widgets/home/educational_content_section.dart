import 'package:flutter/material.dart';
import '../../../commons/themes/style_simple/colors.dart';
import '../../../commons/themes/style_simple/styles.dart';

/// Educational Content Section Widget
/// Purpose: Display learning resources and career tips for students
///
/// Features to implement:
/// - Can use static articles list or create EducationArticle model
/// - Display in horizontal scrolling cards (280px wide)
/// - Show: article icon, title, description, read time
/// - Navigate to article details on card tap
/// - Topics: CV writing, interview tips, time management, professional skills
/// - "See All" button to navigate to learning center
///
/// UI Requirements:
/// - Card with left side colored icon panel (100px wide)
/// - Article icon with accent color
/// - Title, description, and read time
/// - 180px card height
/// - Icon with accent color background
///
/// Note: You can create sample articles or extend to load from mock data
class EducationalContentSection extends StatelessWidget {
  const EducationalContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Create articles list (static or from mock data)
    // Sample structure:
    // final articles = [
    //   {'title': '...', 'description': '...', 'readTime': '5 min', 'icon': Icons.description},
    // ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // TODO: Add section header with "Learn & Grow" title and "See All" button

        // TODO: Add horizontal ListView.builder
        // - Height: 180px
        // - Scroll direction: Axis.horizontal
        // - Card width: 280px
        // - Build article cards with icon panel on left and content on right
        // - Show icon, title, description, read time
      ],
    );
  }
}
