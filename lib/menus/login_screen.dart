
import 'package:belajar_flutter/components/authscreen/custom_button_login.dart';
import 'package:belajar_flutter/components/authscreen/custom_field_login.dart';
import 'package:belajar_flutter/components/authscreen/custom_text.dart';
import 'package:belajar_flutter/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),

              Row(
                children: [
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.help),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              const CustomHeading(text: 'Masuk'),

              const SizedBox(height: 8),

              const CustomText(
                text: 'Silahkan masuk dengan username dan password-mu',
              ),

              const SizedBox(height: 48),

              CustomFieldLogin(
                label: 'Username',
                controller: controller.txtUsername,
                required: true,
                keyboardType: TextInputType.text,
              ),

              const SizedBox(height: 24),

              CustomFieldLogin(
                label: 'Password',
                controller: controller.txtPassword,
                required: true,
                obscureText: true,
              ),

              const Spacer(),

              Obx(
                () => controller.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: CustomButtonLogin(
                          onPressed: () {
                            controller.login();
                          },
                          buttonText: 'Login',
                          isOutline: false,
                        ),
                      ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
