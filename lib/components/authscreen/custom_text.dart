import 'package:flutter/material.dart';
class CustomHeading extends StatelessWidget{
  final String text;

  const CustomHeading({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
class CustomText extends StatelessWidget {
  final String text;

  const CustomText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}