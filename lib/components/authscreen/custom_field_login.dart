
import 'package:flutter/material.dart';

class CustomFieldLogin extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final bool required;
  final TextInputType keyboardType;
  final String? suffixText;
  final String? prefixText;
  final bool readOnly;
  final bool obscureText;

  const CustomFieldLogin({
    super.key,
    required this.label,
    required this.controller,
    this.required = false,
    this.keyboardType = TextInputType.text,
    this.suffixText,
    this.prefixText,
    this.readOnly = false,
    this.obscureText = false,
  });

  @override
  State<CustomFieldLogin> createState() => _CustomFieldLoginState();
}

class _CustomFieldLoginState extends State<CustomFieldLogin> {
  bool isObscured = true;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_refresh);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_refresh);
    super.dispose();
  }

  void _refresh() {
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      readOnly: widget.readOnly,
      obscureText: widget.obscureText && isObscured,
      style: const TextStyle(
        fontSize: 13,
        color: Colors.black,
        fontFamily: 'Poppins',
      ),
      decoration: InputDecoration(
        label: RichText(
          text: TextSpan(
            text: widget.label,
            style: const TextStyle(
              fontSize: 11,
              color: Color(0xFF555555),
              fontFamily: 'Poppins',
            ),
            children: [
              if (widget.required)
                const TextSpan(
                  text: '*',
                  style: TextStyle(color: Colors.black),
                ),
            ],
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(vertical: 17),
        prefixText: widget.prefixText,
        suffixText: widget.suffixText,
        suffixIcon: widget.obscureText
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isObscured = !isObscured;
                  });
                },
                icon: Icon(
                  isObscured ? Icons.visibility_off : Icons.visibility,
                  size: 18,
                  color: const Color(0xFF333333),
                ),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(
                  minWidth: 32,
                  minHeight: 32,
                ),
              )
            : widget.controller.text.isNotEmpty
                ? IconButton(
                    onPressed: widget.controller.clear,
                    icon: const Icon(
                      Icons.cancel,
                      size: 18,
                      color: Color(0xFF333333),
                    ),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(
                      minWidth: 32,
                      minHeight: 32,
                    ),
                  )
                : null,
        suffixIconConstraints: const BoxConstraints(
          minWidth: 32,
          minHeight: 32,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF777777),
            width: 1.2,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF267421),
            width: 1.5,
          ),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.2,
          ),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
        ),
      ),
      validator: (value) {
        if (widget.required && (value == null || value.trim().isEmpty)) {
          return '${widget.label} wajib diisi';
        }
        return null;
      },
    );
  }
}
