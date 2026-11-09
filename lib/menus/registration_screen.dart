import 'package:belajar_flutter/components/authscreen/custom_button_login.dart';
import 'package:belajar_flutter/components/authscreen/custom_field_login.dart';
import 'package:belajar_flutter/components/authscreen/custom_text.dart';
import 'package:belajar_flutter/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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

              const CustomHeading(text: 'Daftar'),

              const SizedBox(height: 8),

              const CustomText(
                text: 'Lengkapi data dirimu dibawah ini, ya!',
              ),

              const SizedBox(height: 48),

              CustomFieldLogin(
                label: 'Nama Lengkap',
                controller: TextEditingController(),
                required: true,
              ),

              const SizedBox(height: 24),

              CustomFieldLogin(
                label: 'Email',
                controller: TextEditingController(),
                required: true,
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 24),

              CustomFieldLogin(
                label: 'Username',
                controller: TextEditingController(),
                prefixText: '+62',
                required: true,
                keyboardType: TextInputType.phone,
              ),

              const SizedBox(height: 24),

              CustomFieldLogin(
                label: 'Berat Badan',
                controller: TextEditingController(),
                suffixText: 'Kg',
                required: true,
                keyboardType: TextInputType.number,
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                height: 52,
                child: CustomButtonLogin(
                  onPressed: () {
                    Get.toNamed(
                      Routes.loginscreen,
                    );
                  },
                  buttonText: 'Lanjutkan',
                  isOutline: false,
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
