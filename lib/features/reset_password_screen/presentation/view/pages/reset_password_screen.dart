import 'package:flutter/material.dart';
import 'package:hirely/features/login_screen/presentation/view/pages/login_screen.dart';
import 'package:hirely/core/teme_data.dart';

import '../components/reset_password_form.dart';


class ResetPasswordScreen extends StatelessWidget {
   const ResetPasswordScreen({super.key});
static const String routeName = "reset_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hirely"),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {

            },
iconSize: 20,
            padding: EdgeInsets.all(5),
            constraints: BoxConstraints(),

            style: IconButton.styleFrom(
             side: BorderSide(color: AppTheme.primary, width: 3),
              shape: CircleBorder(),
            ),
            icon: Icon(Icons.question_mark),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            padding: EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.white,
             // border: Border(top: BorderSide(color: AppTheme.primary, width: 4)),
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
                SizedBox(height: 20,),
                Text(
                    "Reset Password",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    )
                ),
                SizedBox(height: 10,),
                Text(
                  '''Enter a new password for your Hirley  account.''',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF434653),

                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),
               ResetPasswordForm(),
                SizedBox(height: 20,),

                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xffEDEEEF),
                   border: Border.all(color: Color(0xffE1E3E4), width: 1),

                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.info_outline, size: 25, color: AppTheme.primary,),
                      SizedBox(width: 5,),
                      Expanded(
                        child: Text(
                          "Passwords must be at least 8 characters long and include a mix of letters, numbers, and symbols.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF434653),

                          ),
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(height: 40,),
                Divider(),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                    }, child: Text("Back to login", style: TextStyle(
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
