import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../commons/themes/style_simple/colors.dart';
import '../../../commons/themes/style_simple/styles.dart';

class JobsPage extends StatefulWidget {
  const JobsPage({super.key});

  @override
  State<JobsPage> createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {
  String selectedFilter = 'All';
  String sortBy = 'Most Recent';

  // Sample job data
  final List<Map<String, dynamic>> jobs = [
    {
      'id': '1',
      'title': 'Graphic Design Task',
      'company': 'Creative Studio',
      'description': 'Design promotional materials for upcoming event. Quick turnaround needed.',
      'location': 'Oran, Algeria',
      'phone': '+213 555 678 901',
      'postedTime': 'Just now',
      'deadline': '2 days left',
      'salary': '8000 DA',
      'type': 'Task',
      'isUrgent': true,
      'rating': 4.5,
      'positions': 1,
      'email': 'jobs@creativestudio.dz',
      'requirements': {
        'skills': ['Graphic Design', 'Adobe Photoshop', 'Illustration'],
        'experience': '1-2 years in graphic design',
        'languages': ['English', 'French'],
        'timeCommitment': '10 hours per week',
        'availability': ['Weekdays', 'Flexible'],
      },
      'fullDescription': 'We\'re looking for a talented graphic designer to create promotional materials for our upcoming event. You\'ll be responsible for designing posters, social media graphics, and digital banners that capture attention and drive engagement.',
    },
    {
      'id': '2',
      'title': 'Content Writer',
      'company': 'Lan Hayiti',
      'description': 'We are looking for a talented Content Writer experienced in crafting compelling content...',
      'location': 'Algiers, Algeria',
      'phone': '+213 555 456 789',
      'postedTime': '1 day ago',
      'deadline': '3 days left',
      'salary': '5000 DA',
      'type': 'Task',
      'isUrgent': true,
      'rating': 4.2,
      'positions': 2,
      'email': 'contact@lanhayiti.dz',
      'requirements': {
        'skills': ['Content Writing', 'SEO', 'Research'],
        'experience': '2-3 years in content writing',
        'languages': ['English', 'Arabic', 'French'],
        'timeCommitment': '15 hours per week',
        'availability': ['Weekdays', 'Weekends'],
      },
      'fullDescription': 'We\'re seeking a creative content writer to join our team. You\'ll create engaging blog posts, articles, and web content that resonates with our audience and drives traffic to our platforms.',
    },
    {
      'id': '3',
      'title': 'Social Media Manager',
      'company': 'TechStart',
      'description': 'Manage social media accounts, create engaging content, and grow our online presence...',
      'location': 'Algiers, Algeria',
      'phone': '+213 555 567 890',
      'postedTime': '5 days ago',
      'deadline': '2 weeks left',
      'salary': '40000 DA/mo',
      'type': 'Part-Time',
      'isUrgent': false,
      'rating': 4.7,
      'positions': 1,
      'email': 'jobs@techstart.dz',
      'requirements': {
        'skills': ['Social Media Marketing', 'Content Creation', 'Analytics', 'Canva'],
        'experience': '2-3 years in social media management',
        'languages': ['English', 'French', 'Arabic'],
        'timeCommitment': '20 hours per week',
        'availability': ['Weekdays', 'Weekends', 'Flexible'],
      },
      'fullDescription': 'We\'re looking for a creative and strategic Social Media Manager to join our marketing team. You\'ll be responsible for managing our social media presence across multiple platforms, creating engaging content, and analyzing performance metrics.\n\nThis role requires someone who understands the Algerian market and can create content that resonates with our local audience while maintaining our global brand identity.',
    },
    {
      'id': '4',
      'title': 'Mobile App Tester',
      'company': 'AppDev Solutions',
      'description': 'Test mobile applications and report bugs. No coding required.',
      'location': 'Setif, Algeria',
      'phone': '+213 555 890 123',
      'postedTime': '6 days ago',
      'deadline': '3 weeks left',
      'salary': '4500 DA',
      'type': 'Task',
      'isUrgent': false,
      'rating': 4.0,
      'positions': 3,
      'email': 'testing@appdev.dz',
      'requirements': {
        'skills': ['Manual Testing', 'Bug Reporting', 'Attention to Detail'],
        'experience': 'No experience required',
        'languages': ['English'],
        'timeCommitment': '5 hours per week',
        'availability': ['Weekdays', 'Flexible'],
      },
      'fullDescription': 'Join our testing team to help ensure our mobile applications are bug-free and user-friendly. You\'ll test various features, identify issues, and provide detailed feedback to our development team.',
    },
  ];

  List<Map<String, dynamic>> get filteredJobs {
    var filtered = jobs;
    
    if (selectedFilter == 'Part Time') {
      filtered = filtered.where((job) => job['type'] == 'Part-Time').toList();
    } else if (selectedFilter == 'Tasks') {
      filtered = filtered.where((job) => job['type'] == 'Task').toList();
    }

    if (sortBy == 'Most Recent') {
      // Already in order
    }

    return filtered;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text(
          'Career',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.favorite_border, color: AppColors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: AppColors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Filters and Sort
          Padding(
            padding: const EdgeInsets.all(AppStyles.spacingMD),
            child: Row(
              children: [
                // Filter Button
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.grey4,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.grey5),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.filter_list, color: AppColors.white, size: 18),
                      SizedBox(width: 4),
                      Text(
                        'Filters',
                        style: TextStyle(color: AppColors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                // Sort Dropdown
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.grey4,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.grey5),
                  ),
                  child: DropdownButton<String>(
                    value: sortBy,
                    dropdownColor: AppColors.grey4,
                    underline: const SizedBox(),
                    style: const TextStyle(color: AppColors.white, fontSize: 14),
                    icon: const Icon(Icons.keyboard_arrow_down, color: AppColors.white, size: 20),
                    items: ['Most Recent', 'Highest Pay', 'Closest Deadline']
                        .map((value) => DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        sortBy = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),

          // Filter Tabs
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppStyles.spacingMD),
            child: Row(
              children: [
                _buildFilterChip('All'),
                const SizedBox(width: 8),
                _buildFilterChip('Part Time'),
                const SizedBox(width: 8),
                _buildFilterChip('Tasks'),
              ],
            ),
          ),

          const SizedBox(height: 8),

          // Job Count
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppStyles.spacingMD),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '${filteredJobs.length} jobs found',
                style: const TextStyle(
                  color: AppColors.grey6,
                  fontSize: 14,
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Jobs List
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: AppStyles.spacingMD),
              itemCount: filteredJobs.length,
              itemBuilder: (context, index) {
                final job = filteredJobs[index];
                return _buildJobCard(context, job);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label) {
    final isSelected = selectedFilter == label;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedFilter = label;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.lavenderPurple : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? AppColors.lavenderPurple : AppColors.grey5,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? AppColors.black : AppColors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
  Widget _buildJobCard(BuildContext context, Map<String, dynamic> job) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: job['isUrgent'] ? const Color(0xFF2D1B3D) : AppColors.grey4,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: job['isUrgent'] ? const Color(0xFF4A2D5C) : AppColors.grey5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      job['title'],
                      style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      job['company'],
                      style: const TextStyle(
                        color: AppColors.grey6,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              if (job['isUrgent'])
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: AppColors.urgentRed,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.warning_rounded, color: AppColors.white, size: 14),
                      SizedBox(width: 4),
                      Text(
                        'Urgent',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),

          const SizedBox(height: 12),

          // Description
          Text(
            job['description'],
            style: const TextStyle(
              color: AppColors.grey7,
              fontSize: 14,
              height: 1.4,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),

          const SizedBox(height: 12),

          // Location and Time
          Row(
            children: [
              const Icon(Icons.location_on_outlined, color: AppColors.grey6, size: 16),
              const SizedBox(width: 4),
              Text(
                job['location'],
                style: const TextStyle(color: AppColors.grey6, fontSize: 12),
              ),
              const SizedBox(width: 16),
              const Icon(Icons.access_time, color: AppColors.grey6, size: 16),
              const SizedBox(width: 4),
              Text(
                job['postedTime'],
                style: const TextStyle(color: AppColors.grey6, fontSize: 12),
              ),
            ],
          ),

          const SizedBox(height: 8),
          // Phone and Deadline
          Row(
            children: [
              const Icon(Icons.phone_outlined, color: AppColors.grey6, size: 16),
              const SizedBox(width: 4),
              Text(
                job['phone'],
                style: const TextStyle(color: AppColors.grey6, fontSize: 12),
              ),
              const SizedBox(width: 16),
              const Icon(Icons.calendar_today_outlined, color: AppColors.grey6, size: 16),
              const SizedBox(width: 4),
              Text(
                job['deadline'],
                style: const TextStyle(color: AppColors.grey6, fontSize: 12),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Salary and Actions
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                job['salary'],
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.grey5,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  job['type'],
                  style: const TextStyle(
                    color: AppColors.grey7,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Action Buttons
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
                color: AppColors.grey6,
                style: IconButton.styleFrom(
                  backgroundColor: AppColors.grey5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    context.go(
                      '/jobs/details/${job['id']}',
                      extra: job,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.lavenderPurple,
                    foregroundColor: AppColors.white,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Apply Now',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}