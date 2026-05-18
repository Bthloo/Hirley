import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/core/custom_elevated_button.dart';
import 'package:hirely/core/teme_data.dart';

import '../components/rank_container.dart';
import '../components/result_circle.dart';
import '../components/result_row.dart';
import '../components/skill_gap_container.dart';

class TestResultScreen extends StatelessWidget {
  const TestResultScreen({super.key});
static const String routeName = 'test_result_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('React.js - Result',style: TextStyle(
          color: Colors.black,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600
        ),),
      ),
      body:  Padding(
          padding:  EdgeInsets.symmetric(horizontal:15.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 15.h,),
                ResultCircle(result: "68",),
                SizedBox(height: 20.h,),
                ResultRow(
                  correctAnswers: 14,
                  missedAnswers: 6,
                ),
                SizedBox(height: 30.h,),
                RankContainer(
                  title: "Junior Frontend Dev",
                  rank: 12,
                  total: 89
                ),
                SizedBox(height: 25.h,),
                Row(
                  children: [
                    Text("YOUR SKILL GAPS",
                      style: TextStyle(
                          color: Color(0xff737784),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600
                      ),)
                  ],
                ),
                SizedBox(height: 10.h,),
                SkillGapContainer(
                  title: "Hooks — useEffect, useMemo",
                  correct: 2,
                  total: 5,
                ),
                SizedBox(height: 10.h,),
                SkillGapContainer(
                  title: "State management patterns",
                  correct: 2,
                  total: 4,
                ),
                SizedBox(height: 10.h,),
                SkillGapContainer(
                  title: "Component lifecycle",
                  correct: 3,
                  total: 3,
                ),
                SizedBox(height: 20.h,),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20.r),
                  decoration: BoxDecoration(
                    color: Color(0xffDAE2FF),
                    border: BorderDirectional(start: BorderSide(color: Color(0xff00327D), width: 4.w)),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("RECOMMENDED COURSE",
                        style: TextStyle(
                            color: Color(0xff00327D),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600
                        ),),
                      SizedBox(height: 5.h,),
                      Text("Master React Hooks",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600
                        ),
                  ),
                      SizedBox(height: 20.h,),
                      Row(
                        spacing: 10.w,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(Color(0xffDAE2FF)),
                                elevation: WidgetStatePropertyAll(0),
                                side: WidgetStatePropertyAll(BorderSide(color: Color(0xff00327D), width: 1.w),),

                              ),
                                onPressed: () {

                            },
                                child: Text("Save",style: TextStyle(
                                  color: Color(0xff00327D),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600
                                ),)
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: ElevatedButton(onPressed: () {

                            },
                                child: Text("Start Learning")
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
            ),
                SizedBox(height: 20.h,),
          ]
            ),
        ),
    ));
  }
}
