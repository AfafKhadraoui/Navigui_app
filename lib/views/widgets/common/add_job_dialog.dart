import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../commons/themes/style_simple/colors.dart';

/// Pop-up dialog for confirming job creation
/// Shows success message with lime green theme for employer
class AddJobDialog extends StatelessWidget {
  final String jobTitle;
  final VoidCallback onViewJob;
  final VoidCallback onAddAnother;

  const AddJobDialog({
    super.key,
    required this.jobTitle,
    required this.onViewJob,
    required this.onAddAnother,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.grey4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Success Icon
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: AppColors.electricLime.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check_circle,
                color: AppColors.electricLime,
                size: 50,
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Title
            Text(
              'Job Posted Successfully!',
              textAlign: TextAlign.center,
              style: GoogleFonts.aclonica(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
            
            const SizedBox(height: 12),
            
            // Job Title
            Text(
              '"$jobTitle"',
              textAlign: TextAlign.center,
              style: GoogleFonts.aclonica(
                fontSize: 16,
                color: AppColors.electricLime,
              ),
            ),
            
            const SizedBox(height: 8),
            
            // Description
            Text(
              'Your job posting is now live and visible to students.',
              textAlign: TextAlign.center,
              style: GoogleFonts.aclonica(
                fontSize: 12,
                color: AppColors.grey6,
              ),
            ),
            
            const SizedBox(height: 32),
            
            // View Job Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: onViewJob,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.electricLime,
                  foregroundColor: AppColors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'View Job',
                  style: GoogleFonts.aclonica(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 12),
            
            // Add Another Job Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                onPressed: onAddAnother,
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.electricLime,
                  side: const BorderSide(
                    color: AppColors.electricLime,
                    width: 2,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Add Another Job',
                  style: GoogleFonts.aclonica(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 12),
            
            // Close Button
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Close',
                style: GoogleFonts.aclonica(
                  fontSize: 14,
                  color: AppColors.grey6,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Show the dialog
  static void show(
    BuildContext context, {
    required String jobTitle,
    required VoidCallback onViewJob,
    required VoidCallback onAddAnother,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AddJobDialog(
        jobTitle: jobTitle,
        onViewJob: onViewJob,
        onAddAnother: onAddAnother,
      ),
    );
  }
}
