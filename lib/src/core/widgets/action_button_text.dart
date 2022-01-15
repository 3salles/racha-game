import 'package:flutter/material.dart';

class ActionButtonText extends StatelessWidget {
  final String text;
  final Color foregroundColor;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const ActionButtonText(
    this.text, {
    Key? key,
    this.foregroundColor = const Color(0xFFE7A117),
    this.backgroundColor = const Color(0xFFF6F6F9),
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;

    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: _screenWidth * 0.85,
        decoration: BoxDecoration(
          color: backgroundColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: foregroundColor, overflow: TextOverflow.ellipsis),
          ),
        ),
      ),
    );
  }
}
