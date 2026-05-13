import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hirely/core/teme_data.dart';

class ResetIcon extends StatelessWidget {
  const ResetIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  SvgPicture.asset(
      "assets/icons/Container.svg",
      width: 30,
      height: 30,
      color: AppTheme.primary,
    );
  }
}
