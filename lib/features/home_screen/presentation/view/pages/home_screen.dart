import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/teme_data.dart';
import '../../cubit/bottom_app_bar_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = 'home-screen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomAppBarCubit(),
      child: BlocBuilder<BottomAppBarCubit, BottomAppBarState>(
        builder: (context, state) {
          return Scaffold(
            drawer: Drawer(),
            appBar: AppBar(
              title: Text('Hirely'),
              centerTitle: false,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person),
                  color: Colors.white,
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Colors.deepOrangeAccent)
                  ),
                ),
              ],
              iconTheme: IconThemeData(
                color: AppTheme.primary,
              ),
            ),
            bottomNavigationBar: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(
                boxShadow:  [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    spreadRadius: 0,
                    blurRadius: 2   ,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(13.r),
                  topRight: Radius.circular(13.r),
                ),
              ),
              child: ClipRRect(
                borderRadius:  BorderRadius.only(
                    topLeft:  Radius.circular(15.r),
                    topRight:Radius.circular(15.r)
                ),

                child: Theme(
                  data: Theme.of(context).copyWith(
                    splashColor: Colors.transparent,
                    //highlightColor: Colors.transparent,
                  ),
                  child: BottomNavigationBar(

                    backgroundColor: Colors.white,
                      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
                      elevation: 0,
                      showUnselectedLabels: false,
                      showSelectedLabels: false,
                      selectedFontSize: 0,
                      unselectedFontSize: 0,
                      unselectedItemColor: Color(0xff9CA3AF),
                      type: BottomNavigationBarType.fixed,
                      iconSize: 27.sp,
                      unselectedIconTheme: IconThemeData(
                        color: Color(0xff9CA3AF)
                      ),
                      currentIndex: BottomAppBarCubit.get(context).currentTapIndex,
                      onTap: (index) {
                        BottomAppBarCubit.get(context).changeIndex(index);
                      },
                    items: [
                      BottomNavigationBarItem(
                        tooltip: "HOME",
                        activeIcon: _buildActiveIcon(icon:CupertinoIcons.house_fill, text: "HOME"),
                        label: "HOME",
                        icon: _buildUnActiveIcon(icon:CupertinoIcons.house, text: "HOME"),
                      ),
                      BottomNavigationBarItem(
                        tooltip: "TESTS",
                        activeIcon: _buildActiveIcon(icon:Icons.psychology, text: "TESTS"),
                        label: "TESTS",
                        icon: _buildUnActiveIcon(icon:Icons.psychology_outlined, text: "TESTS"),
                      ),
                      BottomNavigationBarItem(
                        tooltip: "JOBS",
                        activeIcon: _buildActiveIcon(icon:Icons.work, text: "JOBS"),
                        label: "JOBS",
                        icon: _buildUnActiveIcon(icon:Icons.work_outline_outlined, text: "JOBS"),
                      ),
                      BottomNavigationBarItem(
                        tooltip: "RANK",
                        activeIcon: _buildActiveIcon(icon:Icons.military_tech, text: "RANK"),
                        label: "RANK",
                        icon: _buildUnActiveIcon(icon:Icons.military_tech_outlined, text: "RANK")
                      ),
                      BottomNavigationBarItem(
                        tooltip: "PROFILE",
                        activeIcon: _buildActiveIcon(icon:Icons.person, text: "PROFILE"),
                        label: "PROFILE",
                        icon: _buildUnActiveIcon(icon:Icons.person_outline_outlined, text: "PROFILE"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: Center(
                child: BottomAppBarCubit.get(context).tabs[BottomAppBarCubit.get(context).currentTapIndex]
            ),

          );
        },
      ),
    );
  }
}

Widget _buildActiveIcon({required IconData icon, required text}) {
  return Container(
    margin: EdgeInsets.only(top: 10.h,bottom: 5.h),
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
    decoration: BoxDecoration(
      color: AppTheme.primary.withOpacity(0.05),
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: AppTheme.primary),
        SizedBox(height: 2.h),
        Text(text,style: TextStyle(
          fontSize: 12.sp,
          color: AppTheme.primary,
          fontWeight: FontWeight.w600
        ),)
      ],
    ),
  );
}
Widget _buildUnActiveIcon({required IconData icon, required text}) {
  return Container(
    margin: EdgeInsets.only(top: 10.h,bottom: 5.h),
    width: double.infinity,
    color: Colors.transparent,
    padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: Color(0xff9CA3AF)),
        SizedBox(height: 2.h),
        Text(text,style: TextStyle(
            fontSize: 12.sp,
            color: Color(0xff9CA3AF),
        ),)
      ],
    ),
  );
}