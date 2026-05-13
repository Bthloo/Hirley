import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/core/custom_elevated_button.dart';

import '../../../../../core/teme_data.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  final currentTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.r),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h,),
            Text(
                currentTime.hour < 12 ? 'Good Morning,' : currentTime.hour < 17 ?'After Noon,' : 'Good Night,',
            style: TextStyle(
              color: Color(0xff434653),
              fontSize: 14.sp,
            ),
            ),
            SizedBox(height: 5.h,),
            Text(
              'Bassel Alaa',
              style: TextStyle(
                color: AppTheme.primary,
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
           SizedBox(height: 20.h,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10.r),
              decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: Offset(0, 1),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
                border: BorderDirectional(
                  start: BorderSide(
                    color: AppTheme.primary,
                    width: 4.w,
                  ),
                )
              ),
              child: Padding(
                padding: EdgeInsets.all(15.r),
                child: Row(
                  children: [
                  Container(
                    width: 70.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xffFFBA00),width: 7.w)
                    ),
                    child: Center(
                      child: Text(
                        '62',
                        style: TextStyle(
                          color: AppTheme.primary,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Skill Score · Frontend Dev',
                          style: TextStyle(
                            color: Color(0xff191C1D),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(height: 5.h,),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5.r,horizontal: 10.r),
                          decoration: BoxDecoration(
                            color: Color(0xffFFBA00).withAlpha(90),
                            borderRadius: BorderRadius.all(Radius.circular(8.r)),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.star,size: 20,color: Color(0xff624A00)),
                              SizedBox(width: 5.w,),
                              Text("Verified Candidate",
                                style: TextStyle(
                                  color: Color(0xff624A00),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(height: 5.h,),
                        Text("↑ +8 XP this week",
                          style: TextStyle(
                            color: Color(0xff15803D),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500)
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.h,),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffFFDF98).withAlpha(90),
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: Color(0xffFFBA00).withAlpha(90),width: 1.w)
              ),
              padding: EdgeInsets.all(15.r),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Take your next test",
                        style: TextStyle(
                          color: Color(0xff191C1D),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600
                      ),),
                      SizedBox(height: 5.h,),
                      Text("React.js · 20 min",
                        style: TextStyle(
                            color: Color(0xff434653),
                            fontSize: 14.sp,
                        ),),
                    ],
                  ),
                  Spacer(),
                  SizedBox(
                    width: 100.w,
                    child: CustomElevatedButton(
                        text: 'Start',
                      onPressed: () {

                      },
                    ),
                  )
                ],
              ),
            ),
              SizedBox(height: 30.h,),
            Row(
              children: [
                Text("JOB MATCHES",
                  style: TextStyle(
                    color: Color(0xff434653),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600
                ),),
                Spacer(),
                Text("See All 14",
                  style: TextStyle(
                    color: Color(0xff434653),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400
                ),)
              ],
            ),
            SizedBox(height: 8.h,),
            Container(
              padding: EdgeInsets.all(20.r),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
                border: Border(left: BorderSide(color: Colors.green,width: 4.w))
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.r)),
                      color: Color(0xffE1E3E4),
                    ),
                      child: Icon(Icons.domain,color: Color(0xff434653),size: 30.sp,)),
                  SizedBox(width: 15.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Senior Frontend Engineer",
                        style: TextStyle(
                          color: Color(0xff191C1D),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600
                      ),),
                      Text("TechCorp · Dubai",
                        style: TextStyle(
                            color: Color(0xff191C1D),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400
                        ),),
                ],
              ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff15803D).withAlpha(40),
                      borderRadius: BorderRadius.all(Radius.circular(8.r)),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 5.r,horizontal: 10.r),
                    child: Text("82%",style: TextStyle(
                      color: Color(0xff166534),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600
                    ),),
                  )

          ],
        ),
            ),
            SizedBox(height: 15.h,),
            Container(
              padding: EdgeInsets.all(20.r),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border(left: BorderSide(color: Color(0xffF1C03B),width: 4.w))
              ),
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(10.r),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.r)),
                        color: Color(0xffE1E3E4),
                      ),
                      child: Icon(Icons.domain,color: Color(0xff434653),size: 30.sp,)),
                  SizedBox(width: 15.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("React Developer",
                        style: TextStyle(
                            color: Color(0xff191C1D),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600
                        ),),
                      Text("Innovate.io · Remote",
                        style: TextStyle(
                            color: Color(0xff191C1D),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400
                        ),),
                    ],
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF1C03B).withAlpha(90),
                      borderRadius: BorderRadius.all(Radius.circular(8.r)),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 5.r,horizontal: 10.r),
                    child: Text("67%",style: TextStyle(
                        color: Color(0xff624A00),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600
                    ),),
                  ),

                ],
              ),
            ),
            SizedBox(height: 30.h,),
            Text("LEARNING PROGRESS",
              style: TextStyle(
                  color: Color(0xff434653),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600
              ),),
            SizedBox(height: 8.h,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.r),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: Offset(0, 1),
                  ),
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Advanced React Patterns",
                    style: TextStyle(
                        color: Color(0xff191C1D),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600
                    ),),
                  SizedBox(height: 5.h,),
                  LinearProgressIndicator(
                    value: 0.35,
                    backgroundColor: Color(0xffE1E3E4),
                    borderRadius: BorderRadius.circular(50.r),
                    minHeight: 10.h,
                    valueColor: AlwaysStoppedAnimation<Color>(AppTheme.primary),
                  ),
                  SizedBox(height: 5.h,),
                  Text("35% · ~4 hrs left",
                    style: TextStyle(
                        color: Color(0xff434653),
                        fontSize: 14.sp,
                    ),),
                ],
              ),
            ),
            SizedBox(height: 30 .h,),
          ]
        ),
      )
    );
  }
}
