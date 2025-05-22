import 'package:flutter/material.dart';

class SubTitleText extends StatelessWidget {
  const SubTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'GOOGLE.COM',
      style: TextStyle(
        color: Colors.cyanAccent,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
