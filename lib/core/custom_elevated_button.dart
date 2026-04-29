import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key,required this.text, this.onPressed});

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          fixedSize: WidgetStateProperty.all(Size(double.infinity, 42.h)),
          maximumSize: WidgetStateProperty.all(Size(double.infinity, 42.h)),
          minimumSize: WidgetStateProperty.all(Size(double.infinity, 42.h)),
        ),
        child: Text(text,
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700
          )
          ,)
    );
  }
}
