import 'package:flutter/material.dart';
import 'package:hirely/features/register_screen/presentation/view/component/term_and_services_agreement.dart';
import '../../../../../core/custom_elevated_button.dart';
import '../../../../../core/custom_form_field.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

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
          SizedBox(height: 2),
          CustomFormField(
            hintText: "Jane Doe",
            prefix: Icon(
              Icons.person_outline,
              color: Color(0xFF737784),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your full name";
              }
              return null;
            },
            controller: TextEditingController(),
          ),
          SizedBox(height: 10),
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
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                "Password",
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
            hintText: "Password",
            prefix: Icon(
              Icons.lock_outline,
              color: Color(0xFF737784),
            ),
            isPassword: true,
            suffix: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.visibility_off_outlined,
                color: Color(0xFF737784),
              ),
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
          SizedBox(height: 20),
          TermAndServicesAgreement(),
          SizedBox(height: 20),
          CustomElevatedButton(
            text: "Create account",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
