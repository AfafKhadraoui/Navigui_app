import 'package:flutter/material.dart';
import '../../../commons/themes/style_simple/colors.dart';
import '../../../commons/themes/style_simple/styles.dart';

/// My Tasks Screen
///
/// This screen serves dual purpose:
/// - For STUDENTS: Shows their applied jobs, saved jobs, and task progress
/// - For EMPLOYERS: Shows their posted jobs, applicants, and job management
///
/// TODO: Implement role-based UI switching (student vs employer)
/// TODO: Add tabs for different task categories
/// TODO: Implement task list with filtering
/// TODO: Add task status updates
class MyTasksScreen extends StatefulWidget {
  const MyTasksScreen({super.key});

  @override
  State<MyTasksScreen> createState() => _MyTasksScreenState();
}

class _MyTasksScreenState extends State<MyTasksScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // TODO: Initialize with correct number of tabs based on user role
    _tabController = TabController(length: 3, vsync: this);

    // TODO: Load user role from auth/storage
    // TODO: Load tasks data from MockData or API
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text(
          'My Tasks',
          style: TextStyle(
            color: AppColors.textPrimary,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        // TODO: Add notification icon
        // TODO: Add filter icon
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: AppColors.primary,
          labelColor: AppColors.primary,
          unselectedLabelColor: AppColors.textSecondary,
          tabs: const [
            // TODO: Change tabs based on user role
            // For students: Applied, Saved, In Progress
            // For employers: Active Posts, Pending Review, Completed
            Tab(text: 'Active'),
            Tab(text: 'Pending'),
            Tab(text: 'Completed'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // TODO: Implement each tab view
          _buildActiveTasks(),
          _buildPendingTasks(),
          _buildCompletedTasks(),
        ],
      ),
    );
  }

  /// Build Active Tasks Tab
  /// TODO: Implement actual task list with real data
  Widget _buildActiveTasks() {
    return ListView(
      padding: const EdgeInsets.all(AppStyles.spacingMD),
      children: [
        // TODO: Replace with real task cards
        _buildPlaceholderCard('Active Task 1', AppColors.green1),
        const SizedBox(height: AppStyles.spacingMD),
        _buildPlaceholderCard('Active Task 2', AppColors.blue2),
        const SizedBox(height: AppStyles.spacingMD),
        _buildPlaceholderCard('Active Task 3', AppColors.yellow1),
      ],
    );
  }

  /// Build Pending Tasks Tab
  /// TODO: Implement actual task list with real data
  Widget _buildPendingTasks() {
    return ListView(
      padding: const EdgeInsets.all(AppStyles.spacingMD),
      children: [
        // TODO: Replace with real task cards
        _buildPlaceholderCard('Pending Task 1', AppColors.orange1),
        const SizedBox(height: AppStyles.spacingMD),
        _buildPlaceholderCard('Pending Task 2', AppColors.purple1),
      ],
    );
  }

  /// Build Completed Tasks Tab
  /// TODO: Implement actual task list with real data
  Widget _buildCompletedTasks() {
    return ListView(
      padding: const EdgeInsets.all(AppStyles.spacingMD),
      children: [
        // TODO: Replace with real task cards
        _buildPlaceholderCard('Completed Task 1', AppColors.grey5),
        const SizedBox(height: AppStyles.spacingMD),
        _buildPlaceholderCard('Completed Task 2', AppColors.grey5),
      ],
    );
  }

  /// Placeholder card - Replace with actual task card widget
  Widget _buildPlaceholderCard(String title, Color color) {
    return Container(
      padding: const EdgeInsets.all(AppStyles.spacingMD),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppStyles.radiusMD),
        border: Border.all(color: color, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: AppStyles.spacingSM),
          Text(
            'TODO: Add task details here',
            style: TextStyle(
              color: AppColors.textSecondary,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: AppStyles.spacingMD),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppStyles.spacingSM,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(AppStyles.radiusSM),
                ),
                child: Text(
                  'Status',
                  style: TextStyle(
                    color: color,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
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
