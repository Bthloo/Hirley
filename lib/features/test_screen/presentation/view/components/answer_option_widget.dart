import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnswerOptionWidget extends StatelessWidget {
  const AnswerOptionWidget({
    super.key,
    required this.value,
    required this.groupValue,
    required this.text,
    required this.onChanged,
  });

  final int value;
  final int? groupValue;
  final String text;
  final ValueChanged<int> onChanged;

  bool get isSelected => value == groupValue;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12.r),
      onTap: () {
        onChanged(value);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: double.infinity,
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color:
          isSelected ? const Color(0xffDAE2FF) : Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: isSelected
                ? const Color(0xFF0047AB)
                : const Color(0xFFC3C6D5),
            width: isSelected ? 2.w : 1.w,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform.translate(
              offset: Offset(-10.w, -10.h),
              child: Radio<int>(
                value: value,
                groupValue: groupValue,
                onChanged: (_) {
                  onChanged(value);
                },
                activeColor: const Color(0xFF0047AB),
              ),
            ),

            SizedBox(width: 4.w),

            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: isSelected
                        ? const Color(0xff0047AB)
                        : Colors.black,
                    fontWeight: isSelected
                        ? FontWeight.w600
                        : FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}