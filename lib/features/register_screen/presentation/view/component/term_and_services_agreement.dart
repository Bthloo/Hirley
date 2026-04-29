import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hirely/core/teme_data.dart';

class TermAndServicesAgreement extends StatelessWidget {
  const TermAndServicesAgreement({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: false,
            onChanged: (value) {},
            side: BorderSide(
              color: Color(0xFFC3C6D5),
              width: 1,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: BorderSide(
                color: Color(0xFFC3C6D5),
                width: 1,
              ),
            ),
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "I agree to the ",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF434653),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text:
                  "Terms of Service and Privacy Policy",
                  style: TextStyle(
                    fontSize: 12,
                    color: AppTheme.primary,
                    fontWeight: FontWeight.w400,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // handle tap
                    },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
