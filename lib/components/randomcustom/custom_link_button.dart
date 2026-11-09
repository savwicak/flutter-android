import 'package:flutter/material.dart';

class CustomLinkButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const CustomLinkButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 0, 180, 246),
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          decorationThickness: 1.5,
        ),
      ),
    );
  }
}