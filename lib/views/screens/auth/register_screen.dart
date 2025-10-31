import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../commons/themes/style_simple/colors.dart';
import '../../../commons/themes/style_simple/styles.dart';
import '../../../routes/app_router.dart';

/// Register Screen - User registration
/// NO BOTTOM BAR here!
///
/// TODO: Implement your registration UI
/// - Full name input
/// - Email/phone input
/// - Password input
/// - Confirm password input
/// - User type selection (Student/Employer)
/// - "Register" button → navigate to home after success
/// - "Already have an account? Login" link
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.textPrimary),
          onPressed: () => context.go(AppRouter.login),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Account',
                style: AppStyles.headlineLarge.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                'Sign up to get started',
                style: AppStyles.bodyMedium.copyWith(
                  color: AppColors.grey600,
                ),
              ),

              const SizedBox(height: 32),

              // TODO: Add full name TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppStyles.radiusMD),
                  ),
                  prefixIcon: const Icon(Icons.person_outline),
                ),
              ),

              const SizedBox(height: 16),

              // TODO: Add email TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppStyles.radiusMD),
                  ),
                  prefixIcon: const Icon(Icons.email_outlined),
                ),
              ),

              const SizedBox(height: 16),

              // TODO: Add password TextField
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppStyles.radiusMD),
                  ),
                  prefixIcon: const Icon(Icons.lock_outline),
                ),
              ),

              const SizedBox(height: 16),

              // TODO: Add user type selection (Student/Employer)
              Text(
                'I am a:',
                style: AppStyles.bodyMedium.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 8),

              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        // TODO: Select student type
                      },
                      icon: const Icon(Icons.school),
                      label: const Text('Student'),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        // TODO: Select employer type
                      },
                      icon: const Icon(Icons.business),
                      label: const Text('Employer'),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 32),

              // Register Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Implement registration logic
                    // After successful registration, navigate to home:
                    context.go(AppRouter.home); // Now shows bottom bar!
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppStyles.radiusMD),
                    ),
                  ),
                  child: Text(
                    'Register',
                    style: AppStyles.bodyLarge.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Login Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: AppStyles.bodyMedium,
                  ),
                  TextButton(
                    onPressed: () {
                      context.go(AppRouter.login);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
