import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/core/custom_elevated_button.dart';
import '../component/roles_list_view.dart';
import '../component/step_section.dart';
import 'field_selection_screen.dart';

class RoleSelectionScreen extends StatefulWidget {
  const RoleSelectionScreen({super.key});
static const String routeName = "role_selection_screen";

  @override
  State<RoleSelectionScreen> createState() => _RoleSelectionScreenState();
}

class _RoleSelectionScreenState extends State<RoleSelectionScreen> {
  String? selectedRole;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hirely"),
        centerTitle: true ,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shadowColor: Color(0xffE1E3E4),
        child: CustomElevatedButton(
          onPressed: () {
            if (selectedRole == null) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Please select a role"),
                ),
              );
              return;
            }else{
                Navigator.of(context).pushNamed(FieldSelectionScreen.routeName);
            }

            // navigate
          },
          text: "Continue as ${selectedRole ?? ''}",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h,),
            StepSection(currentStep: 1,),
              SizedBox(height: 5.h),
             Text(
              "Who are you?",
              style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xFF191C1D),
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Select the profile that best describes you.",
              style: TextStyle(
                fontSize: 14.sp,
                color: Color(0xFF434653),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.h,),
            Expanded(
                child: RolesListView(
                  onChanged: (value) {
                    setState(() {
                      selectedRole = value;
                    });
                  },
                ),
            ),
          ],
        ),
      ),
    );
  }
}
