import 'package:advanced_course/core/theming/styles.dart';
import 'package:advanced_course/features/onboarding/widgets/doc_image_and_text.dart';
import 'package:advanced_course/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/get_started_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            bottom: 30.h,
          ),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(height: 30.h),
              const DocImageAndText(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.w,
                ),
                child: Column(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyles.font13GreyRegular,
                    ),
                    SizedBox(height: 30.h),
                    const GetStartedButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}