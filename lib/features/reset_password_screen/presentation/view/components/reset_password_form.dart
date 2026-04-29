import 'package:flutter/material.dart';
import 'package:hirely/features/reset_password_screen/presentation/view/components/password_checker.dart';

import '../../../../../core/custom_elevated_button.dart';
import '../../../../../core/custom_form_field.dart';
import '../../../../login_screen/presentation/view/pages/login_screen.dart';

class ResetPasswordForm extends StatefulWidget {
   const ResetPasswordForm({super.key});


  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

final TextEditingController newPasswordController = TextEditingController();
bool _obscure = true;

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "NEW PASSWORD",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF191C1D),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 2),
          CustomFormField(
            isPassword: _obscure,
            onChange: (_) => setState(() {}),
            hintText: "your new password",
            suffix: IconButton(
              onPressed: (){
                setState(() {
                _obscure = !_obscure;
                });
              },
              icon: Icon( _obscure ? Icons.visibility_off_outlined : Icons.visibility_outlined , size: 16,),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your password";
              } else if (value.length < 8) {
                return "Password must be at least 8 characters";
              }
              return null;
            },
            controller: newPasswordController,
          ),
          SizedBox(height: 5,),
          PasswordChecker(password: newPasswordController.text,),
          SizedBox(height: 20,),
          Row(
            children: [
              Text(
                "CONFIRM NEW  PASSWORD",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF191C1D),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 2),
          CustomFormField(
            isPassword: true,
            hintText: "confirm your new password",
            suffix: IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.visibility_off_outlined, size: 16,),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your email";
              } else if (value.length < 6) {
                return "Password must be at least 6 characters";
              }
              return null;
            },
            controller: TextEditingController(),
          ),
          SizedBox(height: 20,),
          CustomElevatedButton(text: "Update Password",
              onPressed: (){
                Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
              }),
        ],
      ),
    );
  }
}
