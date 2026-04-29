import 'package:flutter/material.dart';
import 'package:hirely/features/register_screen/presentation/view/component/register_form.dart';
import 'package:hirely/features/register_screen/presentation/view/component/register_intro_text.dart';
import '../../../../login_screen/presentation/view/component/login_row.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  static const String routeName = "register";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RegisterIntroText(),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: Colors.white,
                  //  border: Border(left: BorderSide(color: AppTheme.primary, width: 4)),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create an account",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Enter your details to get started",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF434653),
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    SizedBox(height: 20),
                    RegisterForm(),
                  ],
                ),
              ),
              SizedBox(height: 20),
              LoginRow(),
            ],
          ),
        ),
      ),
    );
  }
}
