import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hirely/features/home_page/presentation/view/pages/home_page.dart';
import 'package:hirely/features/jobs_page/presentation/view/pages/jobs_page.dart';
import 'package:hirely/features/profile_page/presentation/view/pages/profile_page.dart';
import 'package:hirely/features/rank_page/presentation/view/pages/rank_page.dart';
import 'package:hirely/features/tests_page/presentation/view/pages/tests_page.dart';

part 'bottom_app_bar_state.dart';

class BottomAppBarCubit extends Cubit<BottomAppBarState> {
  static BottomAppBarCubit get(context) => BlocProvider.of(context);
  BottomAppBarCubit() : super(BottomAppBarInitial());

  int currentTapIndex = 0;
  List<String> titles = [
    "HOME",
    "TESTS",
    "JOBS",
    "PROFILE"
  ];
  List<Widget> tabs = [
     HomePage(),
    const TestsPage(),
    const JobsPage(),
    const RankPage(),
    const ProfilePage()
  ];
  void changeIndex(int index) {
    currentTapIndex = index;
    emit(ChangeBottomAppbarState());
  }
}
