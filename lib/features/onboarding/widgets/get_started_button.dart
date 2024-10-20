import 'package:advanced_course/core/helpers/extentions.dart';
import 'package:advanced_course/core/routing/routes.dart';
import 'package:advanced_course/core/theming/colors.dart';
import 'package:advanced_course/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: WidgetStatePropertyAll(ColorsManager.mainBlue),
        minimumSize: WidgetStatePropertyAll(
          Size(double.infinity, 52),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                16.0,
              ),
            ),
          ),
        ),
      ),
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
