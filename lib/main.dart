import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/features/home_screen/presentation/view/pages/home_screen.dart';
import 'package:hirely/features/login_screen/presentation/view/pages/login_screen.dart';
import 'package:hirely/features/onboarding_screen/view/pages/onBoarding_tow.dart';
import 'package:hirely/features/onboarding_screen/view/pages/onboarding_screen.dart';
import 'package:hirely/features/profile_setup_screen/presentation/view/pages/cv_upload_screen.dart';
import 'package:hirely/features/profile_setup_screen/presentation/view/pages/notification_permission.dart';
import 'package:hirely/features/profile_setup_screen/presentation/view/pages/profile_set_up_success.dart';
import 'package:hirely/features/register_screen/presentation/view/pages/register_screen.dart';
import 'package:hirely/features/reset_password_screen/presentation/view/pages/reset_password_screen.dart';
import 'package:hirely/core/teme_data.dart';
import 'package:hirely/features/splash_screen/splash_screen.dart';
import 'package:hirely/features/test_screen/presentation/view/pages/test_result_screen.dart';
import 'package:hirely/features/test_screen/presentation/view/pages/test_screen.dart';

import 'features/profile_setup_screen/presentation/view/pages/field_selection_screen.dart';
import 'features/profile_setup_screen/presentation/view/pages/role_selection_screen.dart';
import 'features/reset_password_screen/presentation/view/pages/forgot_password_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 884),
      child: MaterialApp(
        title: 'Hirely',
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: ThemeMode.light,
        initialRoute: TestResultScreen.routeName,
        routes: {
          SplashScreen.routeName : (context) => SplashScreen(),
          OnboardingScreen.routeName : (context) => OnboardingScreen(),
          OnboardingTow.routeName : (context) => OnboardingTow(),
          LoginScreen.routeName : (context) => LoginScreen(),
          RegisterScreen.routeName : (context) => RegisterScreen(),
          ForgotPasswordScreen.routeName : (context) => ForgotPasswordScreen(),
          ResetPasswordScreen.routeName : (context) => ResetPasswordScreen(),
          RoleSelectionScreen.routeName : (context) => RoleSelectionScreen(),
          FieldSelectionScreen.routeName : (context) => FieldSelectionScreen(),
          CvUploadScreen.routeName : (context) => CvUploadScreen(),
          ProfileSetUpSuccess.routeName : (context) => ProfileSetUpSuccess(),
          NotificationPermissionScreen.routeName : (context) => NotificationPermissionScreen(),
          HomeScreen.routeName : (context) => HomeScreen(),
          TestScreen.routeName : (context) => TestScreen(),
          TestResultScreen.routeName : (context) => TestResultScreen(),
        },
      ),
    );
  }
}
