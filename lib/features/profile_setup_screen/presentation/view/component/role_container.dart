// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:hirely/core/teme_data.dart';
//
// class RoleContainer extends StatefulWidget {
//   const RoleContainer({super.key,required this.description,required this.icon,required this.title});
//   final String title;
//   final String description;
//   final IconData icon;
//
//   @override
//   State<RoleContainer> createState() => _RoleContainerState();
// }
//
// class _RoleContainerState extends State<RoleContainer> {
//   bool isSelected = false;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         setState(() {
//           isSelected = !isSelected;
//         });
//       },
//       child: Container(
//         padding: EdgeInsets.all(15),
//         foregroundDecoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8),
//           border: BorderDirectional(
//             start: BorderSide(color: isSelected ? AppTheme.primary : Colors.transparent, width: 4),
//
//           )
//         ),
//         decoration: BoxDecoration(
//           color: isSelected ? Color(0xffebeff3) : Colors.white,
//           border: Border.all(color:isSelected ? Color(0xFFd4dde8) : Color(0xFFEDEEEF), width: 1),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: Row(
//           spacing: 15.w,
//           children: [
//             CircleAvatar(
//               radius: 24,
//               backgroundColor: isSelected ? Color(0xFFd4dde8) : Color(0xFFEDEEEF),
//               child:  Icon(widget.icon,color: isSelected ? AppTheme.primary : Color(0xff434653),),
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(widget.title,
//                   style: TextStyle(
//                       fontSize: 18.sp,
//                       fontWeight: FontWeight.w600
//                   ),
//                 ),
//                 Text(widget.description,
//                   style: TextStyle(
//                       fontSize: 12.sp,
//                       color: Color(0xFF434653)
//                   ),
//                 )
//               ],
//             ),
//             Spacer(),
//             Expanded(
//                 child: Radio(
//                   value: isSelected,
//
//                 ))
//
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/core/teme_data.dart';

class RoleContainer extends StatelessWidget {
  const RoleContainer({
    super.key,
    required this.description,
    required this.icon,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final String description;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8.r),
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.all(15.w),
                foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          border: BorderDirectional(
            start: BorderSide(color: isSelected ? AppTheme.primary : Colors.transparent, width: 4),

          )
        ),
        decoration: BoxDecoration(

          color: isSelected ? const Color(0xFFEBEFF3) : Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color:
            isSelected ? const Color(0xFFD4DDE8) : const Color(0xFFEDEEEF),
          ),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24.r,
              backgroundColor:
              isSelected ? const Color(0xFFD4DDE8) : const Color(0xFFEDEEEF),
              child: Icon(
                icon,
                color: isSelected
                    ? AppTheme.primary
                    : const Color(0xFF434653),
              ),
            ),

            SizedBox(width: 15.w),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height: 4.h),

                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xFF434653),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              width: 24.w,
              height: 24.h,
              child: Radio<bool>(

                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: VisualDensity.compact,
                value: true,
                groupValue: isSelected,
                activeColor: AppTheme.primary,

                onChanged: (value) => onTap()
              ),
            ),
          ],
        ),
      ),
    );
  }
}
