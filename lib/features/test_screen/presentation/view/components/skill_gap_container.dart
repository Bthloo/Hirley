import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkillGapContainer extends StatelessWidget {
  const SkillGapContainer({
    super.key,required this.title, required this.total,required this.correct});
final String title;
final int total;
final int correct;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xffE1E3E4)),
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 10,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title
                  ,style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600
                ),),
                Text(
                  "$correct/$total correct",
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Color(0xFF434653)
                ),),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            decoration: BoxDecoration(
              color:  skillLevel() == "Strong" ? Color(0xffDAE2FF) :
              skillLevel() == "Fair" ? Color(0xffFFDF98) :
              Color(0xffFFDAD6),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Text(
              skillLevel(),
              style: TextStyle(
                color: skillLevel() == "Strong" ? Color(0xff00419E) :
                skillLevel() == "Fair" ? Color(0xff5A4300) :
                Color(0xff93000A),
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String skillLevel(){
    if (total == 0) return "Weak";

    double ratio = correct / total;

    if (ratio == 1.0) {
      return "Strong";
    } else if (ratio >= 0.5) {
      return "Fair";
    } else {
      return "Weak";
    }
  }
}
