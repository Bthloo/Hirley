import 'package:flutter/material.dart';

class FingerPrintButton extends StatelessWidget {
  const FingerPrintButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  IconButton.filled(
        style: IconButton.styleFrom(
          backgroundColor: Color(0xFFEDEEEF),
          fixedSize: Size(48, 48),
        ),
        onPressed: () {

        },
        icon: Icon(Icons.fingerprint));
  }
}
