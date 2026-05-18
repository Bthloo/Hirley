import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/core/custom_elevated_button.dart';
import 'package:hirely/features/test_screen/presentation/view/pages/test_result_screen.dart';
import '../../../../../core/teme_data.dart';
import '../components/answer_option_widget.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});
static const String routeName = 'test_screen';

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int? selectedAnswer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Color(0xff0047AB),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12.r),
            bottomRight: Radius.circular(12.r),
          ),
        ),
        title: Text('React.js Fundamentals',style: TextStyle(
          color: Colors.white,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600
        ),),
        centerTitle: false,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40.h),
          child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 12.h,
              ),
            child: Row(
              children: [
                Text("Q7/20",style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400
                ),
                ),
                SizedBox(width: 10.w,),
               Expanded(
                 child: LinearProgressIndicator(
                   value: 0.35,
                   borderRadius:  BorderRadius.circular(999.r),
                   backgroundColor: Colors.white.withOpacity(0.3    ),
                   valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                   minHeight: 6.h,
                 ),
               ),
                SizedBox(width: 10.w,),
                  Text("35%",style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400
                  ),
                  ),
              ],
            ),

            )
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Color(0xFFE1E3E4))),
        ),
        child: BottomAppBar(
          color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48.h,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.transparent),
                          shadowColor: WidgetStateProperty.all(Colors.transparent),
                          side: WidgetStateProperty.all(BorderSide(color: Color(0xFF737784))),
                          overlayColor: WidgetStateProperty.all(AppTheme.primary.withOpacity(0.1))
                      ),
                      onPressed: () {
                      },
                      child: Center(
                        child: Text(
                          "SKIP",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12.w,),
                Expanded(
                  child: SizedBox(
                    height: 48.h,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shadowColor: WidgetStateProperty.all(Colors.transparent),
                          side: WidgetStateProperty.all(BorderSide(color: Color(0xFF737784))),
                      ),
                      onPressed: () {
                       Navigator.pushNamed(context, TestResultScreen.routeName);
                      },
                      child: Center(
                        child: Text(
                          "NEXT",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 8.h,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Text("QUESTION 7 OF 20",style: TextStyle(
                fontSize: 12.sp,
                color: AppTheme.primary,
                fontWeight: FontWeight.w600
             ),),
              SizedBox(height: 2.h,),
              Text("What does useEffect do when its dependency array is empty[ ]?",style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 12.h,),
              AnswerOptionWidget(
                value: 1,
                groupValue: selectedAnswer,
                text:
                "It runs on every single render of the component.",
                onChanged: (value) {
                  setState(() {
                    selectedAnswer = value;
                  });
                },
              ),
          
              AnswerOptionWidget(
                value: 2,
                groupValue: selectedAnswer,
                text:
                "It runs exactly once after the initial render.",
                onChanged: (value) {
                  setState(() {
                    selectedAnswer = value;
                  });
                },
              ),
          
              AnswerOptionWidget(
                value: 3,
                groupValue: selectedAnswer,
                text:
                "It prevents the component from rendering until data is fetched.",
                onChanged: (value) {
                  setState(() {
                    selectedAnswer = value;
                  });
                },
              ),
              AnswerOptionWidget(
                value: 4,
                groupValue: selectedAnswer,
                text:
                "It causes an infinite loop and crashes the application.",
                onChanged: (value) {
                  setState(() {
                    selectedAnswer = value;
                  });
                },
              ),
          
          
            ],
          ),
        ),
      ),
    );
  }
}
