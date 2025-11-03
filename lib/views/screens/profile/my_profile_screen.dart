import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import '../../../commons/themes/style_simple/colors.dart';
import '../../../routes/app_router.dart';

/// My Profile Screen
/// Shows user profile with edit button
/// Statistics tab, Portfolio tab, Reviews tab, Settings, About, Logout
class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Get actual user type from state/provider
    final bool isStudent = true; // Change this based on logged-in user type
    
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        elevation: 0,
        title: Text(
          'My Profile',
          style: GoogleFonts.aclonica(
            fontSize: 20,
            color: AppColors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: AppColors.white),
            onPressed: () {
              // TODO: Navigate to settings
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isStudent ? AppColors.purple6 : AppColors.electricLime,
                    width: 3,
                  ),
                  color: AppColors.grey4,
                ),
                child: Icon(
                  isStudent ? Icons.person : Icons.business,
                  size: 60,
                  color: AppColors.grey6,
                ),
              ),
              
              const SizedBox(height: 16),
              
              // Name
              Text(
                isStudent ? 'Student Name' : 'Company Name',
                style: GoogleFonts.aclonica(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
              
              const SizedBox(height: 8),
              
              // Email
              Text(
                'user@example.com',
                style: GoogleFonts.aclonica(
                  fontSize: 14,
                  color: AppColors.grey6,
                ),
              ),
              
              const SizedBox(height: 24),
              
              // Edit Profile Button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton.icon(
                  onPressed: () {
                    if (isStudent) {
                      context.push(AppRouter.editStudentProfile);
                    } else {
                      context.push(AppRouter.editEmployerProfile);
                    }
                  },
                  icon: const Icon(Icons.edit),
                  label: Text(
                    'Edit Profile',
                    style: GoogleFonts.aclonica(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isStudent ? AppColors.purple6 : AppColors.electricLime,
                    foregroundColor: isStudent ? AppColors.white : AppColors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                ),
              ),
              
              const SizedBox(height: 32),
              
              // Profile Stats (for students)
              if (isStudent) ...[
                Row(
                  children: [
                    Expanded(child: _buildStatCard('12', 'Applications')),
                    const SizedBox(width: 8),
                    Expanded(child: _buildStatCard('3', 'Interviews')),
                    const SizedBox(width: 8),
                    Expanded(child: _buildStatCard('1', 'Hired')),
                  ],
                ),
                const SizedBox(height: 32),
              ],
              
              // Menu Options
              _buildMenuOption(
                icon: Icons.person,
                title: 'View Public Profile',
                onTap: () {
                  // TODO: Navigate to public profile view
                },
              ),
              
              _buildMenuOption(
                icon: Icons.work,
                title: isStudent ? 'My Applications' : 'My Job Posts',
                onTap: () {
                  // TODO: Navigate to applications/jobs
                },
              ),
              
              _buildMenuOption(
                icon: Icons.favorite,
                title: 'Saved Items',
                onTap: () {
                  // TODO: Navigate to saved items
                },
              ),
              
              _buildMenuOption(
                icon: Icons.notifications,
                title: 'Notifications',
                onTap: () {
                  context.push(AppRouter.notifications);
                },
              ),
              
              _buildMenuOption(
                icon: Icons.help,
                title: 'Help & Support',
                onTap: () {
                  // TODO: Navigate to help
                },
              ),
              
              const SizedBox(height: 24),
              
              // Logout Button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: OutlinedButton.icon(
                  onPressed: () {
                    // TODO: Implement logout
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: AppColors.grey4,
                        title: Text(
                          'Logout',
                          style: GoogleFonts.aclonica(color: AppColors.white),
                        ),
                        content: Text(
                          'Are you sure you want to logout?',
                          style: GoogleFonts.aclonica(
                            color: AppColors.grey6,
                            fontSize: 14,
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              'Cancel',
                              style: GoogleFonts.aclonica(
                                color: isStudent ? AppColors.purple6 : AppColors.electricLime,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              context.go(AppRouter.login);
                            },
                            child: Text(
                              'Logout',
                              style: GoogleFonts.aclonica(color: AppColors.red1),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  icon: const Icon(Icons.logout),
                  label: Text(
                    'Logout',
                    style: GoogleFonts.aclonica(
                      fontSize: 18,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.red1,
                    side: const BorderSide(
                      color: AppColors.red1,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 24),
              
              // Version Info
              Text(
                'Version 1.0.0',
                style: GoogleFonts.aclonica(
                  fontSize: 12,
                  color: AppColors.grey6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _buildStatCard(String value, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.grey4,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.purple6, width: 1),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: GoogleFonts.aclonica(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.purple6,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: GoogleFonts.aclonica(
              fontSize: 11,
              color: AppColors.grey6,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
  
  Widget _buildMenuOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: AppColors.grey4,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(icon, color: AppColors.white, size: 24),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: GoogleFonts.aclonica(
                      fontSize: 16,
                      color: AppColors.white,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.grey6,
                  size: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
