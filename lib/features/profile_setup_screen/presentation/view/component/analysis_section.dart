import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/features/profile_setup_screen/presentation/view/component/skills_wrap.dart';
import 'package:hirely/features/profile_setup_screen/presentation/view/pages/field_selection_screen.dart';
import 'package:hirely/features/profile_setup_screen/presentation/view/pages/profile_set_up_success.dart';

import '../../../../../core/teme_data.dart';

class AnalysisSection extends StatelessWidget {
  const AnalysisSection({
    super.key,
    required this.analysisSteps,
    required this.extractedSkills,
    required this.analyzing,
    required this.analysisFinished});
final bool analysisFinished;
final bool analyzing;
final List<String> analysisSteps;
final List<String> extractedSkills;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30.h,),
        Text(analysisFinished ? "AI ANALYSIS DONE" : "AI ANALYSIS IN PROGRESS",style: TextStyle(
            fontSize: 12.sp,
            color: Color(0xff737784),
            fontWeight: FontWeight.w600
        ),),
        SizedBox(height: 10.h,),
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFE7E8E9)),
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            // boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10)],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...analysisSteps.asMap().entries.map((entry) {
                bool isLast = entry.key == analysisSteps.length - 1;
                return Padding(
                  padding: EdgeInsets.only(bottom: 12.h),
                  child: Row(
                    children: [
                      Icon(
                        isLast && analyzing ? Icons.sync : Icons.check_circle,
                        color: isLast && analyzing ? AppTheme.primary : Colors.green,
                        size: 18.sp,
                      ),
                      SizedBox(width: 10.w),
                      Text(entry.value, style: TextStyle(fontSize: 13.sp)),
                    ],
                  ),
                );
              }),
              if (extractedSkills.isNotEmpty) SkillsWrap(extractedSkills: extractedSkills),
              if (analysisFinished) Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 20.h),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(ProfileSetUpSuccess.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
                  ),
                  child: const Text("Continue"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
