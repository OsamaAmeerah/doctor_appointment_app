import 'package:advanced_course/core/di/dependency_injection.dart';
import 'package:advanced_course/core/routing/routes.dart';
import 'package:advanced_course/features/home/ui/home_screen.dart';
import 'package:advanced_course/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_course/features/login/ui/login_screen.dart';
import 'package:advanced_course/features/onboarding/onboarding_screen.dart';
import 'package:advanced_course/features/signup/logic/sign_up_cubit.dart';
import 'package:advanced_course/features/signup/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //* This arguments to be passed in any screen like this ( arguments as className)
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
