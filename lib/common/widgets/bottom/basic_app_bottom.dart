import 'package:flutter/material.dart';

class BasicAppBottom extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double ? height;
  const BasicAppBottom({
    required this.onPressed,
    required this.title,
    this.height,
    super.key
});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(height ?? 80)
        ),
        child: Text(
          title
        ),
    );
  }
}
