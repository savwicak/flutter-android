import 'package:belajar_flutter/pages/calculator_page.dart';
import 'package:belajar_flutter/pages/confirm_registration_page.dart';
import 'package:belajar_flutter/pages/login_page.dart';
import 'package:belajar_flutter/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  static const String calculator = "/calculator";
  static const String login = "/login";
  static const String confirmRegistration = "/confirm-registration";


  static final myPages = [
    GetPage(
      name: login,
      page: () => LoginPage(),
    ),
    GetPage(
      name: confirmRegistration,
      page: () => ConfirmRegistrationPage(),
    ),
    GetPage(
      name: calculator,
      page: () => CalculatorPage(),
    ),
    GetPage(
      name: registration,
      page:() => RegistrationPage()
      )
  ];
}