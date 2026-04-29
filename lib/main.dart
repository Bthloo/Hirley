import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/features/login_screen/presentation/view/pages/login_screen.dart';
import 'package:hirely/features/register_screen/presentation/view/pages/register_screen.dart';
import 'package:hirely/features/reset_password_screen/presentation/view/pages/reset_password_screen.dart';
import 'package:hirely/core/teme_data.dart';

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
        themeMode: ThemeMode.system,
        initialRoute: LoginScreen.routeName,
        routes: {
          LoginScreen.routeName : (context) => LoginScreen(),
          RegisterScreen.routeName : (context) => RegisterScreen(),
          ForgotPasswordScreen.routeName : (context) => ForgotPasswordScreen(),
          ResetPasswordScreen.routeName : (context) => ResetPasswordScreen(),
        },
      ),
    );
  }
}
