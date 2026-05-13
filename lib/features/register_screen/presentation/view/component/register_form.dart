import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/features/register_screen/presentation/view/component/term_and_services_agreement.dart';
import '../../../../../core/custom_elevated_button.dart';
import '../../../../../core/custom_form_field.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool _obscurePassword = true;
    bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return  Form(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Full Name",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF191C1D),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          CustomFormField(
            hintText: "Jane Doe",
            prefix: Icon(
              Icons.person_outline,
              color: Color(0xFF737784),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your full name";
              } else if (value.length < 3) {
                return "name must be at least 2 characters";
              }
              return null;
            },
            controller: TextEditingController(),
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Text(
                "Email Address",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Color(0xFF191C1D),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          CustomFormField(
            hintText: "jane@example.com",
            prefix: Icon(
              Icons.email_outlined,
              color: Color(0xFF737784),
            ),
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
            controller: TextEditingController(),
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Text(
                "Password",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Color(0xFF191C1D),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          CustomFormField(
            hintText: "Password",
            prefix: Icon(
              Icons.lock_outline,
              color: Color(0xFF737784),
            ),
            isPassword: _obscurePassword,
            suffix: IconButton(
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
              icon: Icon( _obscurePassword  ? Icons.visibility_off_outlined : Icons.visibility_outlined),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your password";
              } else if (value.length < 6) {
                return "Password must be at least 6 characters";
              }
              return null;
            },
            controller: TextEditingController(),
          ),
          SizedBox(height: 20.h),
          TermAndServicesAgreement(
            isChecked: isChecked,
            onChanged: (value) {
            setState(() {
              isChecked = value;
            });
          },),
          SizedBox(height: 20.h),
          CustomElevatedButton(
            text: "Create account",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
