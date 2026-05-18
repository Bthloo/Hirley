import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/teme_data.dart';

class ResultCircle extends StatelessWidget {
  const ResultCircle({super.key,required this.result});
final String result;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Color(0xff0047AB), width: 9.w),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            bottom: -5.h,
            child: Text("/100",style: TextStyle(
                fontSize: 12.sp,
                color: Color(0xff434653)
            ),),
          ),
          Text(result,style: TextStyle(
              fontSize: 48.sp,
              fontWeight: FontWeight.w900,
              color: AppTheme.primary
          ),),
        ],
      ),
    );
  }
}
