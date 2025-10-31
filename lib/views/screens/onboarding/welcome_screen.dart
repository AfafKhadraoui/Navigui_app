import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../commons/themes/style_simple/colors.dart';
import '../../../commons/themes/style_simple/styles.dart';
import '../../../routes/app_router.dart';

/// Welcome Screen - First screen users see
/// NO BOTTOM BAR here!
///
/// TODO: Implement your welcome screen UI
/// - App logo
/// - Welcome message
/// - "Get Started" button → navigate to onboarding or login
/// - "Already have an account?" → navigate to login
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TODO: Add your app logo/icon here
              Icon(
                Icons.work_outline,
                size: 100,
                color: AppColors.white,
              ),

              const SizedBox(height: 32),

              Text(
                'Welcome to Navigui',
                style: AppStyles.headlineLarge.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  'Find your next opportunity\nConnect with employers\nGrow your career',
                  textAlign: TextAlign.center,
                  style: AppStyles.bodyLarge.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),

              const SizedBox(height: 48),

              // Get Started Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to onboarding (or directly to login)
                  context.go(AppRouter.onboarding);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.white,
                  foregroundColor: AppColors.primary,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 48,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppStyles.radiusMD),
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: AppStyles.bodyLarge.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Login Link
              TextButton(
                onPressed: () {
                  context.go(AppRouter.login);
                },
                child: Text(
                  'Already have an account? Login',
                  style: AppStyles.bodyMedium.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
