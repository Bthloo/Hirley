import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/core/teme_data.dart';

class SignInIntroTexts extends StatelessWidget {
  const SignInIntroTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Hirley", style: TextStyle(
          fontSize: 32.sp,
          color: AppTheme.primary,
          fontWeight: FontWeight.bold,
        )
        ),
        SizedBox(height: 10.h,),
        Text("Welcome back", style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600
        )
        ),
        SizedBox(height: 10.h,),
        Text("Sign in to continue your journey", style: TextStyle(
            fontSize: 14.sp,
            color: Color(0xFF434653),
            fontWeight: FontWeight.w400
        )
        ),
      ],
    );
  }
}
