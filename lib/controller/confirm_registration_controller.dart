import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String username;
  late String fullname;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    username = arguments["username"];
    fullname = arguments["fullname"];
  }
}