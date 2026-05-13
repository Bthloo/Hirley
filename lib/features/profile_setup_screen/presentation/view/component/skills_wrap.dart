import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkillsWrap extends StatelessWidget {
  const SkillsWrap({super.key,required this.extractedSkills});
final List<String> extractedSkills;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Wrap(
        spacing: 8.w,
        runSpacing: 8.h,
        children: extractedSkills.map((skill) => Chip(
          label: Text(skill, style: TextStyle(fontSize: 11.sp, color: Color(0xff166534))),
          backgroundColor: Color(0xffBBF7D0),
          side: BorderSide.none,

        )).toList(),
      ),
    );
  }
}
