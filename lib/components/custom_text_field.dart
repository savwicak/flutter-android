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
      obscureText: isPassword,
      controller: txtController,
      decoration: InputDecoration(
      hintText: hint,
      prefixIcon: Icon(
        icon
      ),
      filled: true,
      fillColor: const Color(0xFFFFFFFF),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
    ),
    );
  }
}