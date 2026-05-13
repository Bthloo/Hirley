import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/teme_data.dart';

class NotificationScreenRow extends StatelessWidget {
  const NotificationScreenRow({
    super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
  });

  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
            radius: 17.r,
            backgroundColor: AppTheme.primary.withOpacity(0.1),
            child: Icon(icon,color: AppTheme.primary,size: 20.r,)),
        SizedBox(width: 20.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(
                    fontSize: 16.sp,
                  )
              ),
              Text(subtitle,
                  style: TextStyle(
                      fontSize: 13.sp,
                      color: Color(0xFF434653)
                  )
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
