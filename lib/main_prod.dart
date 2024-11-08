import 'package:advanced_course/core/di/dependency_injection.dart';
import 'package:advanced_course/core/routing/app_router.dart';
import 'package:advanced_course/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();
  //* To fix font display issue in release mode, set up font scale */

  await ScreenUtil.ensureScreenSize();

  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
