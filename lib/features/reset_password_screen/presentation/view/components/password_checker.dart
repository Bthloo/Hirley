import 'package:flutter/cupertino.dart';

class PasswordChecker extends StatelessWidget {
  final String password;
  const PasswordChecker({super.key, required this.password});

  int get _score {
    int score = 0;
    if (password.length >= 8) score++;
    if (password.contains(RegExp(r'[A-Z]'))) score++;
    if (password.contains(RegExp(r'[0-9]'))) score++;
    if (password.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) score++;
    return score;
  }

  Color get _color => switch (_score) {
    1 => const Color(0xFFE24B4A),
    2 => const Color(0xffF1C03B),
    3 => const Color(0xFF3B8BD4),
    4 => const Color(0xFF22A35A),
    _ => const Color(0xffE1E3E4),
  };

  String get _label => switch (_score) {
    1 => 'Weak',
    2 => 'Fair',
    3 => 'Good',
    4 => 'Strong',
    _ => '',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: List.generate(4, (i) {
            return Expanded(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: EdgeInsets.only(right: i < 3 ? 6 : 0),
                height: 5,
                decoration: BoxDecoration(
                  color: i < _score ? _color : const Color(0xffE1E3E4),
                  borderRadius: BorderRadius.circular(99),
                ),
              ),
            );
          }),
        ),
        const SizedBox(height: 8),
        Text(
          _label,
          style: TextStyle(
            fontSize: 12,
            color: _color,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}