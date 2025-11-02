// lib/views/screens/tasks/my_tasks_screen.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../commons/themes/style_simple/colors.dart';
import '../../../routes/app_router.dart';

/// My Tasks Screen - Hub for job management
/// 
/// For Employers:
/// - View and manage posted jobs
/// - View and manage student applications
/// 
/// For Students (future):
/// - View applied jobs
/// - Track application status
class MyTasksScreen extends StatelessWidget {
  const MyTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Replace with actual user role check from auth provider
    const bool isEmployer = true; // Hardcoded for now

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              const Text(
                'My Tasks',
                style: TextStyle(
                  fontFamily: 'Aclonica',
                  fontSize: 28,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 8),
             const Text(
                isEmployer
                    ? 'Manage your job posts and applications'
                    : 'Track your job applications',
                style: const TextStyle(
                  fontFamily: 'Acme',
                  fontSize: 16,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 32),

              // Navigation Cards
              if (isEmployer) ...[
                _NavigationCard(
                  title: 'My Job Posts',
                  description: 'Create and manage job postings',
                  icon: Icons.work_outline,
                  iconColor: AppColors.primaryDark,
                  onTap: () => context.push(AppRouter.myJobPosts),
                ),
                const SizedBox(height: 16),
                _NavigationCard(
                  title: 'Student Applications',
                  description: 'Review and manage applicants',
                  icon: Icons.people_outline,
                  iconColor: AppColors.purple1,
                  onTap: () => context.push(AppRouter.studentRequests),
                ),
              ] else ...[
                // Student view (future implementation)
                _NavigationCard(
                  title: 'Applied Jobs',
                  description: 'View jobs you\'ve applied to',
                  icon: Icons.assignment_outlined,
                  iconColor: AppColors.primaryDark,
                  onTap: () {
                    // TODO: Navigate to student applied jobs
                  },
                ),
                const SizedBox(height: 16),
                _NavigationCard(
                  title: 'Saved Jobs',
                  description: 'Jobs you\'ve bookmarked',
                  icon: Icons.bookmark_outline,
                  iconColor: AppColors.purple1,
                  onTap: () {
                    // TODO: Navigate to saved jobs
                  },
                ),
              ],

              const Spacer(),

              // Quick Stats (optional)
              if (isEmployer)
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: AppColors.border,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     const _StatItem(
                        label: 'Active Jobs',
                        value: '3',
                        color: AppColors.primaryDark,
                      ),
                      Container(
                        width: 1,
                        height: 40,
                        color: AppColors.border,
                      ),
                     const _StatItem(
                        label: 'Pending',
                        value: '12',
                        color: AppColors.yellow2,
                      ),
                      Container(
                        width: 1,
                        height: 40,
                        color: AppColors.border,
                      ),
                     const _StatItem(
                        label: 'Accepted',
                        value: '5',
                        color: AppColors.success,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavigationCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color iconColor;
  final VoidCallback onTap;

  const _NavigationCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: AppColors.border,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            // Icon
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: iconColor.withOpacity(0.15),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                color: iconColor,
                size: 28,
              ),
            ),
            const SizedBox(width: 16),

            // Text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Acme',
                      fontSize: 18,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(
                      fontFamily: 'Acme',
                      fontSize: 14,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),

            // Arrow
           const Icon(
              Icons.chevron_right,
              color: AppColors.textTertiary,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _StatItem({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontFamily: 'Acme',
            fontSize: 24,
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Acme',
            fontSize: 12,
            color: AppColors.textSecondary,
          ),
        ),
      ],
    );
  }
}
