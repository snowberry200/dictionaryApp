import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'DICTIONARY APP',
      style: TextStyle(
        fontStyle: FontStyle.italic,
        fontFamily: 'Roboto Medium',
        color: Colors.blue,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
