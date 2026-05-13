import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/features/profile_setup_screen/presentation/view/component/step_section.dart';
import '../component/cv_upload_widget.dart';

class CvUploadScreen extends StatelessWidget {
  const CvUploadScreen({super.key});
static const String routeName = "cv-upload-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hirely"),
        centerTitle: true ,
      ),
      body: Padding(
        padding:  EdgeInsets.all(15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StepSection(currentStep: 2),
            SizedBox(height: 10.h,),
            Text("Upload your CV",
              style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xFF191C1D),
              ),
            ),
            SizedBox(height: 10.h,),
            Text("Our AI engine will scan your document to verify your skills against industry standards.",
              style: TextStyle(
                fontSize: 14.sp,
                color: Color(0xFF434653),
              ),
            ),
           SizedBox(height: 20.h,),
            CvUploadWidget(),

          ],
        ),
      ),
    );
  }
}
