import 'package:flutter/material.dart';

class CustomButtonLogin extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final bool isOutline;

  const CustomButtonLogin({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.isOutline = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isOutline
            ? Colors.white
            : const Color(0xFF00880F),
        foregroundColor: isOutline
            ? const Color(0xFF00880F)
            : Colors.white,
        elevation: 0,
        side: isOutline
            ? const BorderSide(color: Color(0xFF00880F))
            : BorderSide.none,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}