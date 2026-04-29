import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/core/teme_data.dart';

import '../pages/login_screen.dart';

class LoginRow extends StatelessWidget {
  const LoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account?",
          style: TextStyle(
            fontSize: 14.sp,
            color: Color(0xFF434653),
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(width: 5.w),
        InkWell(
          onTap: () {
            Navigator.of(
              context,
            ).pushReplacementNamed(LoginScreen.routeName);
          },
          child: Text(
            "Sign in",
            style: TextStyle(
              fontSize: 14.sp,
              color: AppTheme.primary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
