import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/features/register_screen/presentation/view/pages/register_screen.dart';
import 'package:hirely/core/teme_data.dart';

class CreateAccountRow extends StatelessWidget {
  const CreateAccountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      spacing: 5,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("new to Hirely?", style: TextStyle(
            fontSize: 14.sp,
            color: Color(0xFF434653),
            fontWeight: FontWeight.w400
        )
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed(RegisterScreen.routeName);
          },
          child: Text("Create account", style: TextStyle(
              fontSize: 14.sp,
              color: AppTheme.primary,
              fontWeight: FontWeight.w400
          ),
          ),
        )
      ],
    );
  }
}
