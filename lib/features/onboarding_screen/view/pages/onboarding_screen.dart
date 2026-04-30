import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hirely/core/custom_elevated_button.dart';
import 'package:hirely/features/onboarding_screen/view/pages/onBoarding_tow.dart';
import 'package:hirely/features/register_screen/presentation/view/pages/register_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
static const String routeName = 'onBoarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF4FAFD),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset("assets/images/logo.svg", width: 100.w, height: 100.h,),
              SizedBox(height: 30.h,),
              Text("Welcome To Hirley", style: TextStyle(
                fontSize: 32.sp,
                color: Color(0xFF151031),
                fontWeight: FontWeight.bold,
              )
              ),

              SvgPicture.asset("assets/images/group.svg", width: 200.w, height: 200.h,),
              Text("Place Where No one Got Rejected", style: TextStyle(
                fontSize: 24.sp,
                color: Color(0xFF151031),
                fontWeight: FontWeight.w600,
              )
              ),
              SizedBox(height: 10.h,),
              Text("We Will Train And Enhance Your Skills And Draw Your Career ", style: TextStyle(
                fontSize: 20.sp,
                color: Color(0xFF151031),
                fontWeight: FontWeight.w600,
              )
              ),
              SizedBox(height: 40.h,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                  Navigator.of(context).pushReplacementNamed(OnboardingTow.routeName);
                },
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: 15.r,),
                      child: Text("Start Your Journey Now",style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                    )
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
