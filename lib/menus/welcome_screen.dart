
import 'package:belajar_flutter/components/authscreen/custom_button_login.dart';
import 'package:belajar_flutter/components/authscreen/custom_text.dart';
import 'package:belajar_flutter/components/randomcustom/custom_link_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajar_flutter/routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              Row(
                children: [
                  const Icon(
                    Icons.circle,
                    color: Color(0xFF008D45),
                    size: 22,
                  ),

                  const SizedBox(width: 6),

                  const CustomHeading(
                    text: 'gojek',
                  ),

                  const Spacer(),

                  Container(
                    width: 34,
                    height: 34,
                    decoration: const BoxDecoration(
                      color: Color(0xFF008D45),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: const CustomText(
                      text: 'ID',
                    ),
                  ),
                ],
              ),

              const Spacer(),

              Center(
                child: Image.asset(
                  'lib/assets/images/gojek.png',
                  width: double.infinity,
                  height: 220,
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 32),

              const CustomHeading(
                text: 'Selamat Datang di Gojek!',
              ),

              const SizedBox(height: 10),

              const CustomText(
                text: 'Mau pergi, makan, belanja, kirim barang, bayar itu dan segala kebutuhan lainnya? Gojekin aja!',
              ),

              const SizedBox(height: 28),

              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 48,
                      child: CustomButtonLogin(
                        onPressed: () {
                          Get.toNamed(Routes.loginscreen);
                        },
                        buttonText: 'Masuk via no. HP',
                        isOutline: false,
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: SizedBox(
                      height: 48,
                      child: CustomButtonLogin(
                        onPressed: () {
                          Get.toNamed(Routes.loginscreen);
                        },
                        buttonText: 'Masuk via email',
                        isOutline: false,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 14),

              SizedBox(
                width: double.infinity,
                height: 48,
                child: CustomButtonLogin(
                  onPressed: () {
                    Get.toNamed(Routes.registrationscreen);
                  },
                  buttonText: 'Daftar',
                  isOutline: true,
                ),
              ),

              const SizedBox(height: 28),

              Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    const CustomText(
                      text: 'Dengan masuk atau mendaftar, kamu menyetujui ',
                    ),

                    CustomLinkButton(
                      onPressed: () {},
                      buttonText: 'Ketentuan Layanan',
                    ),

                    const CustomText(
                      text: ' dan ',
                    ),

                    CustomLinkButton(
                      onPressed: () {},
                      buttonText: 'Kebijakan Privasi',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
