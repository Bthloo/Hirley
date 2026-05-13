import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/core/teme_data.dart';
import '../../../../../core/custom_elevated_button.dart';
import '../../../../../core/custom_form_field.dart';
import '../../../../profile_setup_screen/presentation/view/pages/role_selection_screen.dart';
import '../../../../reset_password_screen/presentation/view/pages/forgot_password_screen.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool _obscurePassword = true;
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
              validator: (text) {
                if (text == null || text.trim().isEmpty) {
                  return 'please Enter Email Address';
                }
                var regex = RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
                if(!regex.hasMatch(text)){
                  return 'please enter a valid email';
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
              isPassword: _obscurePassword,
              suffix: IconButton(
                onPressed: (){
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
                icon: Icon(_obscurePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined, color: Color(0xFF191C1D),),
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
                Navigator.pushReplacementNamed(context, RoleSelectionScreen.routeName);
              }
          ),
        ],
      ),
    );
  }
}
