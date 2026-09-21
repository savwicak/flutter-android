import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomCalculatorText extends StatelessWidget {
  final String labelText;
  final TextEditingController txtController;

  const CustomCalculatorText({super.key, required this.labelText, required this.txtController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: InputDecoration(
        hint: Text("Number Only"),
        labelText: labelText,
        hintStyle: const TextStyle(
          color: Color(0xFFC1C1C1),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
      controller: txtController,
    );
  }
}