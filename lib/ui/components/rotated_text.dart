import 'package:flutter/material.dart';

class RotatedText extends StatelessWidget {
  final String text;

  const RotatedText({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(
        turns: AlwaysStoppedAnimation(-15 / 360),
        child: Text(
          text,
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.subtitle1!.fontSize,
          ),
        ),
      ),
    );
  }
}
