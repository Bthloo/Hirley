import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/core/teme_data.dart';
import '../../../../../core/custom_elevated_button.dart';
import '../../../../../core/custom_form_field.dart';
import '../../../../reset_password_screen/presentation/view/pages/forgot_password_screen.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Text("Email", style: TextStyle(
                  fontSize: 12.sp,
                  color: Color(0xFF191C1D),
                  fontWeight: FontWeight.w600
              )
              ),
            ],
          ),
          SizedBox(height: 2.h),
          CustomFormField(
              hintText: "Email",
              validator: (value){
                if(value == null || value.isEmpty){
                  return "Please enter your email";
                }
                return null;

              },
              controller: TextEditingController()
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Text("Password", style: TextStyle(
                  fontSize: 12.sp,
                  color: Color(0xFF191C1D),
                  fontWeight: FontWeight.w600
              )
              ),
              Spacer(),
              InkWell(
                onTap: () {

                  Navigator.of(context).pushNamed(ForgotPasswordScreen.routeName);
                },
                child: Text("Forgot password?", style: TextStyle(
                    fontSize: 12.sp,
                    color: AppTheme.primary,
                    fontWeight: FontWeight.w400
                ),
                ),
              )
            ],
          ),
          SizedBox(height: 2,),
          CustomFormField(
              hintText: "Password",
              isPassword: true,
              suffix: IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.visibility_off_outlined, color: Color(0xFF191C1D),),
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return "Please enter your password";
                }else if(value.length < 6){
                  return "Password must be at least 6 characters";
                }
                return null;

              },
              controller: TextEditingController()
          ),
          SizedBox(height: 20,),
          CustomElevatedButton(
              text: "Sign in",
              onPressed: (){

              }
          ),
        ],
      ),
    );
  }
}
