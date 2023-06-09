import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(context) {
    return const Text(
      'hello from flutter',
      style: TextStyle(
        color: Colors.white60,
        fontSize: 32,
      ),
      textAlign: TextAlign.center,
    );
  }
}
