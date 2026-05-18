import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/teme_data.dart';

class RankContainer extends StatelessWidget {
  const RankContainer({super.key,required this.title, required this.rank, required this.total});
  final String title;
  final int rank;
  final int total;


  @override
  Widget build(BuildContext context) {
    return  Container(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          CircleAvatar(
            radius: 15.r,
            child: Icon(Icons.arrow_upward,color: AppTheme.primary,),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your ranking updated",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600
                ),),
                Text("#$rank of $total for $title",style: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xFF434653)
                ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
