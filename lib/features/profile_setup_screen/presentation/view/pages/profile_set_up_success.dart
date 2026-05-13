import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/core/custom_elevated_button.dart';

import '../../../../../core/teme_data.dart';

class ProfileSetUpSuccess extends StatelessWidget {
  const ProfileSetUpSuccess({super.key});
static const String routeName = 'profile-setup-success';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color(0xffE1E3E4)),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    padding: EdgeInsets.all(5.r),
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
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 80.r,
                      backgroundColor: AppTheme.primary,
                      child: Icon(Icons.person, color: Colors.white, size: 90.r),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.r),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.12),
                            blurRadius: 10,
                            offset: Offset(0,5),
                            spreadRadius: 0
                        ),
                      ],
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xffE1E3E4)),
                    ),
                    child: CircleAvatar(
                      radius: 12.r,
                      backgroundColor: Color(0xffF1C03B),
                      child: Icon(Icons.check, color: Colors.white, size: 20.r),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Text.rich(
                TextSpan(
                  text: "You're all set,",
                  children:[
                    TextSpan(
                      text: " Alex",
                      style: TextStyle(
                          color: Color(0xffF1C03B),
                          fontSize: 32.r,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    TextSpan(
                      text: "!",
                      style: TextStyle(
                          color: AppTheme.primary,
                          fontSize: 32.r,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                  style: TextStyle(
                      color: AppTheme.primary,
                      fontSize: 32.r,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Your profile has been verified and yourskills assessment is complete. You arenow ready to step into the next phaseof your career journey.",
                style: TextStyle(
                  fontSize: 16.r,
                  color: Color(0xFF434653),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30,),
              SizedBox(
                height: 60.h,
                child: CustomElevatedButton(
                    text: "Go to Dashboard",
                  onPressed: () {

                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
