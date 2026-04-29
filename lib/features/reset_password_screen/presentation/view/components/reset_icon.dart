import 'package:flutter/material.dart';
import 'package:hirely/core/teme_data.dart';

class ResetIcon extends StatelessWidget {
  const ResetIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          right: 17,
          child: Icon(
            Icons.lock,
            size: 20,
            color: AppTheme.primary,
          ),
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Icon(
            Icons.replay,
            size: 60,
            color: AppTheme.primary,
          ),
        )
      ],
    );
  }
}
