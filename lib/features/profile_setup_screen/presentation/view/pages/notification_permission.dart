import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/core/custom_elevated_button.dart';
import 'package:hirely/core/teme_data.dart';
import 'package:hirely/features/profile_setup_screen/presentation/view/component/notification_screen_row.dart';

import '../../../../home_screen/presentation/view/pages/home_screen.dart';

class NotificationPermissionScreen extends StatelessWidget {
  const NotificationPermissionScreen({super.key});
static const String routeName = 'notification_permission_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:  EdgeInsets.all(15.r),
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: Offset(0,3),
                        spreadRadius: 0
                    ),
                  ],
                  color: Colors.white,
                  border: Border.all(color: Color(0xffE1E3E4)),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 35.r,
                      backgroundColor: AppTheme.primary,
                      child: Icon(Icons.notifications_outlined, color: Color(0xffF1C03B), size: 35.r),
                    ),
                    SizedBox(height: 20.h),
                    Text("Stay updated",
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF191C1D),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text("Never miss an opportunity. Turn onnotifications to receive important updatesdirectly to your device.",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xFF434653),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 50.h),
                    NotificationScreenRow(
                        title: "New job matches",
                        subtitle: "Get alerted when relevant roles open up.",
                        icon: Icons.work_outline
                    ),
                    SizedBox(height: 20.h),
                    NotificationScreenRow(
                        title: "Test results",
                        subtitle: "Instant updates when your scores are ready.",
                        icon: Icons.inventory_rounded
                    ),
                    SizedBox(height: 20.h),
                    NotificationScreenRow(
                        title: "Messages",
                        subtitle: "Direct communications from hiring teams.",
                        icon: Icons.message_outlined
                    ),
                    SizedBox(height: 30.h),
                    SizedBox(
                      height: 57.h,
                      child: CustomElevatedButton(
                          text: "Allow Notifications",
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                          }
                      ),
                    ),
                    SizedBox(height: 10.h),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.transparent),
                          shadowColor: WidgetStateProperty.all(Colors.transparent),
                          side: WidgetStateProperty.all(BorderSide(color: Color(0xFF737784))),
                          overlayColor: WidgetStateProperty.all(AppTheme.primary.withOpacity(0.1))
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                      },
                      child: SizedBox(
                        width: double.infinity,
                        height: 57.h,
                        child: Center(
                          child: Text(
                            "Not now",
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
          ),
    );
  }
}
