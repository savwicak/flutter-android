import 'package:belajar_flutter/components/custom_button.dart';
import 'package:belajar_flutter/components/custom_link_button.dart';
import 'package:belajar_flutter/components/custom_text_field.dart';
import 'package:belajar_flutter/components/cutom_dropdown.dart';
import 'package:belajar_flutter/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtEmail = TextEditingController();

  String selectedRole = 'Student';
  String statusLogin = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: const Color.fromARGB(255, 255, 149, 0),
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Please fill out the form to continue!',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 35),

                const Text(
                  'Username',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 8),

                CustomTextField(
                  icon: Icons.person_outline,
                  hint: 'Username',
                  isPassword: false,
                  txtController: txtUsername,
                ),

                const SizedBox(height: 18),

                 const Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 8),

                CustomTextField(
                  icon: Icons.email_outlined,
                  hint: 'Email',
                  isPassword: false,
                  txtController: txtEmail,
                ),

                const SizedBox(height: 18),

                const Text(
                  'Status',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 8),

                CustomDropdown(
                  hint: 'Select Role',
                  value: selectedRole,
                  items: const ['Student', 'Teacher', 'Admin'],
                  onChanged: (value) {
                    setState(() {
                      selectedRole = value!;
                    });
                  },
                ),
                const SizedBox(height: 18),

                const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 8),

                CustomTextField(
                  icon: Icons.lock_outline,
                  hint: 'Password',
                  isPassword: true,
                  txtController: txtPassword,
                ),

                const SizedBox(height: 30),

                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: CustomButton(
                    onPressed: () {
                      // pindah dan mengirim username ke next page
                      Get.toNamed(
                        Routes.confirmRegistration,
                        arguments: {
                          "username": txtUsername.text,
                          "email": txtEmail.text,
                          "status": selectedRole,
                        },
                      );
                    },
                    buttonText: 'Login',
                  ),
                ),

                const SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),

                    const SizedBox(width: 8),

                    SizedBox(
                      height: 20,
                      child: CustomLinkButton(
                        onPressed: () {
                          Get.toNamed(Routes.login);
                        },
                        buttonText: 'Login',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}