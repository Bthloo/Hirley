import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultRow extends StatelessWidget {
  const ResultRow({super.key,required this.correctAnswers, required this.missedAnswers});
final int correctAnswers;
final int missedAnswers;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xffDAE2FF),
            borderRadius: BorderRadius.circular(20.r),
          ),
          padding: EdgeInsets.symmetric(horizontal:15.w,vertical: 9.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check_circle_outline,color: Color(0xff00419E),size: 20.sp,),
              SizedBox(width: 3.w,),
              Text("$correctAnswers correct",style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff00419E)
              ),),
            ],
          ),
        ),
        SizedBox(width: 10.w,),
        Container(
          decoration: BoxDecoration(
            color: Color(0xffFFDAD6),
            borderRadius: BorderRadius.circular(20.r),
          ),
          padding: EdgeInsets.symmetric(horizontal:15.w,vertical: 9.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.cancel_outlined,color: Color(0xff93000A),size: 20.sp,),
              SizedBox(width: 3.w,),
              Text("$missedAnswers missed",style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff93000A)
              ),),
            ],
          ),
        ),
      ],);
  }
}
