// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:hirely/core/teme_data.dart';
//
// class TermAndServicesAgreement extends StatefulWidget {
//    TermAndServicesAgreement({super.key,required this.isChecked});
//   bool isChecked;
//   @override
//   State<TermAndServicesAgreement> createState() => _TermAndServicesAgreementState();
// }
//
// class _TermAndServicesAgreementState extends State<TermAndServicesAgreement> {
//
//   @override
//   Widget build(BuildContext context) {
//     return  Row(
//       spacing: 5,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(
//           width: 24,
//           height: 24,
//           child: Checkbox(
//             value: widget.isChecked,
//             onChanged: (value) {
//               setState(() {
//                 widget.isChecked = value ?? false;
//               });
//             },
//             side: BorderSide(
//               color: Color(0xFFC3C6D5),
//               width: 1,
//             ),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(4),
//               side: BorderSide(
//                 color: Color(0xFFC3C6D5),
//                 width: 1,
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           child: RichText(
//             text: TextSpan(
//               children: [
//                 TextSpan(
//                   text: "I agree to the ",
//                   style: TextStyle(
//                     fontSize: 12.sp,
//                     color: Color(0xFF434653),
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//                 TextSpan(
//                   text:
//                   "Terms of Service and Privacy Policy.",
//                   style: TextStyle(
//                     fontSize: 12.sp,
//                     color: AppTheme.primary,
//                     fontWeight: FontWeight.w400,
//                   ),
//                   recognizer: TapGestureRecognizer()
//                     ..onTap = () {
//                       // handle tap
//                     },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }


import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/core/teme_data.dart';

class TermAndServicesAgreement extends StatelessWidget {
  const TermAndServicesAgreement({
    super.key,
    required this.isChecked,
    required this.onChanged,
    this.onTermsTap,
  });

  final bool isChecked;
  final ValueChanged<bool> onChanged;
  final VoidCallback? onTermsTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 24.w,
          height: 24.h,
          child: Checkbox(
            value: isChecked,
            onChanged: (value) {
              onChanged(value ?? false);
            },
            activeColor: AppTheme.primary,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            side: const BorderSide(
              color: Color(0xFFC3C6D5),
              width: 1,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
        ),

        SizedBox(width: 8.w),

        Expanded(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              onChanged(!isChecked);
            },
            child: Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: const Color(0xFF434653),
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                  children: [
                    const TextSpan(
                      text: 'I agree to the ',
                    ),

                    TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(
                        color: AppTheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = onTermsTap,
                    ),

                    const TextSpan(
                      text: ' and ',
                    ),

                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        color: AppTheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = onTermsTap,
                    ),

                    const TextSpan(
                      text: '.',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}