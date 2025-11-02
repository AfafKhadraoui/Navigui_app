import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../commons/themes/style_simple/colors.dart';

class SignupSuccessDialog extends StatelessWidget {
  final String userName;
  final bool isStudent;
  final VoidCallback onGoToDashboard;
  final VoidCallback onStartOver;

  const SignupSuccessDialog({
    super.key,
    required this.userName,
    required this.isStudent,
    required this.onGoToDashboard,
    required this.onStartOver,
  });

  @override
  Widget build(BuildContext context) {
    final themeColor = isStudent ? AppColors.purple6 : AppColors.electricLime;
    final buttonTextColor = isStudent ? AppColors.white : AppColors.black;
    
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: AppColors.black,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: Colors.grey[800]!,
            width: 1,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Success icon
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: themeColor,
              ),
              child: Icon(
                Icons.check,
                color: isStudent ? Colors.white : Colors.black,
                size: 60,
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Welcome message
            Text(
              'Welcome, $userName! 🎉',
              textAlign: TextAlign.center,
              style: GoogleFonts.aclonica(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Success message
            Text(
              'Your account has been created successfully',
              textAlign: TextAlign.center,
              style: GoogleFonts.aclonica(
                fontSize: 14,
                color: Colors.grey[400],
              ),
            ),
            
            const SizedBox(height: 8),
            
            // Additional info
            Text(
              isStudent
                  ? "You're ready to start finding amazing opportunities and gaining experience!"
                  : "You're ready to start posting jobs and finding talented students!",
              textAlign: TextAlign.center,
              style: GoogleFonts.aclonica(
                fontSize: 12,
                color: Colors.grey[500],
              ),
            ),
            
            const SizedBox(height: 32),
            
            // Go to Dashboard button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onGoToDashboard,
                style: ElevatedButton.styleFrom(
                  backgroundColor: themeColor,
                  foregroundColor: buttonTextColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  elevation: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      isStudent ? Icons.school : Icons.business_center,
                      color: buttonTextColor,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      isStudent ? 'Start Finding Jobs' : 'Post Your First Job',
                      style: GoogleFonts.aclonica(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 12),
            
            // Go to Dashboard alternative button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: onGoToDashboard,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  side: const BorderSide(
                    color: Colors.white,
                    width: 1.5,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Go to Dashboard',
                      style: GoogleFonts.aclonica(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 24),
            
            // What's Next section
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "What's Next?",
                    style: GoogleFonts.aclonica(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  if (isStudent) ...[
                    _buildNextStepItem('Browse available job opportunities'),
                    _buildNextStepItem('Apply to positions that match your skills'),
                    _buildNextStepItem('Build your portfolio with real experience'),
                  ] else ...[
                    _buildNextStepItem('Post your first job to start finding talent'),
                    _buildNextStepItem('Review applications from qualified students'),
                    _buildNextStepItem('Build your reputation with student reviews'),
                  ],
                ],
              ),
            ),
            
            const SizedBox(height: 20),
            
            // Demo mode info
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Demo Mode - Testing the flow?',
                    style: GoogleFonts.aclonica(
                      fontSize: 11,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 8),
            
            // Start Over button
            TextButton(
              onPressed: onStartOver,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.refresh,
                    color: Colors.grey[600],
                    size: 16,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Start Over',
                    style: GoogleFonts.aclonica(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNextStepItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 6),
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: isStudent ? AppColors.purple6 : AppColors.electricLime,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.aclonica(
                fontSize: 12,
                color: Colors.grey[400],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
