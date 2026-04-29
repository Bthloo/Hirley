import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/features/login_screen/presentation/view/component/sign_in_form.dart';
import 'package:hirely/features/login_screen/presentation/view/component/sign_in_intro_texts.dart';
import 'package:hirely/core/teme_data.dart';
import '../component/create_account_row.dart';
import '../component/finger_print_button.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
static final String routeName = "loginScreen";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:  EdgeInsets.all(25.r),
          child: Container(
            padding: EdgeInsets.all(32.r),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(left: BorderSide(color: AppTheme.primary, width: 4.w)),
              borderRadius: BorderRadius.circular(16.r),
             boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
             crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SignInIntroTexts(),
                SizedBox(height: 10.h,),
                SignInForm(),
                SizedBox(height: 35.h,),
                Divider(color: Color(0xffEDEEEF),),
                  SizedBox(height: 10.h,) ,
                CreateAccountRow(),
                SizedBox(height: 15.h,),
                FingerPrintButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
