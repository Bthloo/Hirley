import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hirely/core/teme_data.dart';
import 'package:hirely/features/login_screen/presentation/view/pages/login_screen.dart';
import 'package:hirely/features/register_screen/presentation/view/pages/register_screen.dart';

import '../components/dashed_border_container.dart';

class OnboardingTow extends StatelessWidget {
  const OnboardingTow({super.key});
  static const String routeName = 'onboardingTow';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.r),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Prove your skills. Land the right role.",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xFF434653),
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 40.h),
              CustomPaint(
                painter: DashedBorderPainter(
                  color: Color(0xFFC3C6D5),
                  strokeWidth: 2,
                  dashWidth: 6,
                  dashSpace: 4,
                  radius: 16,
                ),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(80),
                      child: SvgPicture.asset(
                        'assets/images/logo.svg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              Row(
                children: [
                  Icon(
                    Icons.check_circle_rounded,
                    color: AppTheme.primary,
                    size: 20,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Prove your real skills",
                    style: TextStyle(fontSize: 14.sp, color: Color(0xFF191C1D)),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Icon(
                    Icons.check_circle_rounded,
                    color: AppTheme.primary,
                    size: 20,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Land the right role",
                    style: TextStyle(fontSize: 14.sp, color: Color(0xFF191C1D)),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Icon(
                    Icons.check_circle_rounded,
                    color: AppTheme.primary,
                    size: 20,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Grow with every test",
                    style: TextStyle(fontSize: 14.sp, color: Color(0xFF191C1D)),
                  ),
                ],
              ),
              SizedBox(height: 40.h),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(RegisterScreen.routeName);
                },
                child: SizedBox(
                  width: double.infinity,
                  height: 57.h,
                  child: Center(
                    child: Text(
                      "Get Started Free",
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.transparent),
                  shadowColor: WidgetStateProperty.all(Colors.transparent),
                  side: WidgetStateProperty.all(BorderSide(color: Color(0xFF737784))),
                  overlayColor: WidgetStateProperty.all(AppTheme.primary.withOpacity(0.1))
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                },
                child: SizedBox(
                  width: double.infinity,
                  height: 57.h,
                  child: Center(
                    child: Text(
                      "I already have an account",
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
