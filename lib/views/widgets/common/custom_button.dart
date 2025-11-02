import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../commons/themes/style_simple/colors.dart';

/// Custom styled button widget with different variants
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isOutlined;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? borderColor;
  final double? width;
  final double height;
  final double borderRadius;
  final double fontSize;
  final FontWeight fontWeight;
  final EdgeInsets? padding;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.isOutlined = false,
    this.backgroundColor,
    this.foregroundColor,
    this.borderColor,
    this.width,
    this.height = 50,
    this.borderRadius = 25,
    this.fontSize = 18,
    this.fontWeight = FontWeight.bold,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    if (isOutlined) {
      return SizedBox(
        width: width,
        height: height,
        child: OutlinedButton(
          onPressed: isLoading ? null : onPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: foregroundColor ?? AppColors.white,
            padding: padding ?? const EdgeInsets.symmetric(vertical: 16),
            side: BorderSide(
              color: borderColor ?? AppColors.white,
              width: 2,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          child: isLoading
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      foregroundColor ?? AppColors.white,
                    ),
                  ),
                )
              : Text(
                  text,
                  style: GoogleFonts.aclonica(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                  ),
                ),
        ),
      );
    }

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primary,
          foregroundColor: foregroundColor ?? AppColors.black,
          padding: padding ?? const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          elevation: 0,
        ),
        child: isLoading
            ? SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    foregroundColor ?? AppColors.black,
                  ),
                ),
              )
            : Text(
                text,
                style: GoogleFonts.aclonica(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                ),
              ),
      ),
    );
  }
}

/// Student signup continue button (purple theme)
class StudentContinueButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isLoading;
  final String text;

  const StudentContinueButton({
    super.key,
    required this.onPressed,
    this.isLoading = false,
    this.text = 'Continue',
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: text,
      onPressed: onPressed,
      isLoading: isLoading,
      backgroundColor: AppColors.purple6, // #9288EE
      foregroundColor: AppColors.white,
    );
  }
}

/// Student signup back button (outlined, white)
class StudentBackButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const StudentBackButton({
    super.key,
    required this.onPressed,
    this.text = 'Back',
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: text,
      onPressed: onPressed,
      isOutlined: true,
      foregroundColor: AppColors.white,
      borderColor: AppColors.white,
    );
  }
}

/// Employer signup continue button (lime green theme)
class EmployerContinueButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isLoading;
  final String text;

  const EmployerContinueButton({
    super.key,
    required this.onPressed,
    this.isLoading = false,
    this.text = 'Continue',
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: text,
      onPressed: onPressed,
      isLoading: isLoading,
      backgroundColor: AppColors.electricLime, // #D2FF1F
      foregroundColor: AppColors.black,
    );
  }
}

/// Employer signup back button (outlined, lime green)
class EmployerBackButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const EmployerBackButton({
    super.key,
    required this.onPressed,
    this.text = 'Back',
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: text,
      onPressed: onPressed,
      isOutlined: true,
      foregroundColor: AppColors.electricLime,
      borderColor: AppColors.electricLime,
    );
  }
}

/// Signup button row with back and continue buttons
class SignupButtonRow extends StatelessWidget {
  final VoidCallback onBack;
  final VoidCallback? onContinue;
  final bool isStudent;
  final bool isLoading;
  final String continueText;
  final String backText;

  const SignupButtonRow({
    super.key,
    required this.onBack,
    required this.onContinue,
    this.isStudent = true,
    this.isLoading = false,
    this.continueText = 'Continue',
    this.backText = 'Back',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Back Button
        Expanded(
          child: isStudent
              ? StudentBackButton(
                  onPressed: onBack,
                  text: backText,
                )
              : EmployerBackButton(
                  onPressed: onBack,
                  text: backText,
                ),
        ),

        const SizedBox(width: 16),

        // Continue Button
        Expanded(
          child: isStudent
              ? StudentContinueButton(
                  onPressed: onContinue,
                  isLoading: isLoading,
                  text: continueText,
                )
              : EmployerContinueButton(
                  onPressed: onContinue,
                  isLoading: isLoading,
                  text: continueText,
                ),
        ),
      ],
    );
  }
}
