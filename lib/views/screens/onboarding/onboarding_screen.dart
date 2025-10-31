import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../commons/themes/style_simple/colors.dart';
import '../../../commons/themes/style_simple/styles.dart';
import '../../../routes/app_router.dart';

/// Onboarding Screen - Show app features/tutorial
/// NO BOTTOM BAR here!
///
/// TODO: Implement your onboarding screens
/// - Use PageView for multiple slides
/// - Show app features with images/illustrations
/// - "Skip" button to go directly to login
/// - "Next" button to go through slides
/// - "Get Started" on last slide → navigate to register
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              context.go(AppRouter.login);
            },
            child: Text(
              'Skip',
              style: TextStyle(color: AppColors.primary),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TODO: Add PageView with onboarding slides
              Icon(
                Icons.info_outline,
                size: 120,
                color: AppColors.primary,
              ),

              const SizedBox(height: 32),

              Text(
                'Onboarding Screen',
                style: AppStyles.headlineMedium.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  'Show your app features here\nMultiple slides with PageView',
                  textAlign: TextAlign.center,
                  style: AppStyles.bodyMedium.copyWith(
                    color: AppColors.grey600,
                  ),
                ),
              ),

              const SizedBox(height: 48),

              ElevatedButton(
                onPressed: () {
                  context.go(AppRouter.register);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
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
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
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
