import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/teme_data.dart';

class StepSection extends StatelessWidget {
  const StepSection({super.key,required this.currentStep});
final int currentStep;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Container(
          height: 4.h,
          width: 32.w,
          decoration: BoxDecoration(
            color: AppTheme.primary,
            borderRadius: BorderRadius.all(Radius.circular(9999)),
          ),
        ),
        Container(
          height: 4.h,
          width: 32.w,
          decoration: BoxDecoration(
            color: currentStep == 2 ? AppTheme.primary : Color(0xFFE1E3E4),
            borderRadius: BorderRadius.all(Radius.circular(9999)),
          ),
        ),
        Container(
          height: 4.h,
          width: 32.w,
          decoration: BoxDecoration(
            color: currentStep == 3 ? AppTheme.primary :Color(0xFFE1E3E4),
            borderRadius: BorderRadius.all(Radius.circular(9999)),
          ),
        ),
        SizedBox(width: 5),
        Text("Step $currentStep of 3", style: TextStyle(fontSize: 12.sp, color: Color(0xFF434653)),)
      ],
    );
  }
}
