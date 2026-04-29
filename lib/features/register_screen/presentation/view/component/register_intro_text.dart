import 'package:flutter/cupertino.dart';
import 'package:hirely/core/teme_data.dart';

class RegisterIntroText extends StatelessWidget {
  const RegisterIntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
        "Hirley",
        style: TextStyle(
          fontSize: 32,
          color: AppTheme.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
        SizedBox(height: 10),
        Text(
          "Join the professional network",
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF434653),
            fontWeight: FontWeight.w400,
          ),
        ),],
    );
  }
}
