import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  //variable yang di perlukan
  final String hint;
  final IconData icon;
  final TextEditingController txtController;
  final bool isPassword; 

  const CustomTextField({
    super.key,
    required this.isPassword,
    required this.hint, 
    required this.txtController, 
    required this.icon
    });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      obscureText: isPassword,
      style: const TextStyle(
        fontSize: 14,
        color: Color(0xFF3D2C24),
      ),
      cursorColor: const Color(0xFFEF8132),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: Color(0xFFB5A69C),
          fontSize: 14,
        ),
        prefixIcon: Icon(
          icon,
          color: const Color(0xFFDF762D),
          size: 21,
        ),
        filled: true,
        fillColor: const Color(0xFFFFF8F1),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0xFFF2DDCA),
            width: 1.2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0xFFEF8132),
            width: 1.8,
          ),
        ),
      ),
    );
  }
}