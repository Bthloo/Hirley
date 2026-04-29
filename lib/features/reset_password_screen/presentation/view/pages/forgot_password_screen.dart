import 'package:flutter/material.dart';
import 'package:hirely/core/custom_elevated_button.dart';
import 'package:hirely/features/reset_password_screen/presentation/view/components/reset_icon.dart';
import 'package:hirely/features/reset_password_screen/presentation/view/pages/reset_password_screen.dart';
import 'package:hirely/core/teme_data.dart';

import '../../../../../core/custom_form_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});
static const String routeName = "forgot-password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hirely"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            padding: EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: AppTheme.primary, width: 4)),
              borderRadius: BorderRadius.circular(16),
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
                ResetIcon(),
                SizedBox(height: 20,),
                Text(
                  "Forgot password",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  )
                ),
                SizedBox(height: 10,),
                Text(
                  '''Enter the email address associated with your account, and we'll send you a secure link to reset your password.''',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF434653),

                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text(
                      "Email Address",
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
                  hintText: "jane@example.com",
                  prefix: Icon(
                    Icons.email_outlined,
                    color: Color(0xFF737784),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email";
                    }
                    return null;
                  },
                  controller: TextEditingController(),
                ),
                SizedBox(height: 20,),
                CustomElevatedButton(text: "Send reset link",
                    onPressed: (){
                  Navigator.of(context).pushReplacementNamed(ResetPasswordScreen.routeName);
                }),
                SizedBox(height: 40,),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                }, child: Text("Return to login", style: TextStyle(
                  color: AppTheme.primary,
                  fontSize: 14,

                ),)
                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}
