import 'package:belajar_flutter/menus/history_screen.dart';
import 'package:belajar_flutter/menus/homepage_screen.dart';
import 'package:belajar_flutter/menus/profile_screen.dart';
import 'package:belajar_flutter/pages/calculator_page.dart';
import 'package:belajar_flutter/pages/confirm_registration_page.dart';
import 'package:belajar_flutter/pages/food_list_detailed_screen.dart';
import 'package:belajar_flutter/pages/food_list_screen.dart';
import 'package:belajar_flutter/pages/login_page.dart';
import 'package:belajar_flutter/pages/main_menu.dart';
import 'package:belajar_flutter/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  static const String calculator = "/calculator";
  static const String login = "/login";
  static const String confirmRegistration = "/confirm-registration";
  static const String foodList = "/food-list";
  static const String detailedFoodList = "/detailed-food-list";

  //menus
  static const String home = '/home';
  static const String history = '/history';
  static const String profile = '/progile';
  static const String mainMenu = '/mainMenu';


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
    ),
    GetPage(
      name: foodList,
      page:() => FoodListScreen()
    ),
    GetPage(
      name: detailedFoodList,
      page:() => FoodListDetailedScreen()
    ),
    GetPage(
      name: home,
      page:() => HomepageScreen()
    ),
    GetPage(
      name: history,
      page:() =>HistoryScreen()
    ),
    GetPage(
      name: profile,
      page:() => ProfileScreen()
    ),
    GetPage(
      name: mainMenu,
      page:() => MainMenu()
    )
  ];
}