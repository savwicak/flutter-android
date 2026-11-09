import 'package:belajar_flutter/model/login_model.dart';
import 'package:belajar_flutter/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController{

  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;
  
  var loginModel = Rxn<LoginModel>();


  void login() async{
    if(txtUsername.text.toString().isEmpty || txtPassword.text.toString().isEmpty ){
      Get.snackbar("error", "username dan password harus di isi");
    } else {

      try {
        isLoading.value = true; 
        final url = Uri.parse("https://mediadwi.com/api/latihan/login"); 

        final response = await http.post(url, body: {
          "username" : txtUsername.text.toString(),
          "password" : txtPassword.text.toString()
        });

        isLoading.value = false; 
        if (response.statusCode == 200) {
          loginModel.value =loginModelFromJson(response.body);

        if (loginModel.value?.status == true) {
          Get.snackbar("success", loginModel.value?.message ?? "");
          Get.offNamed(Routes.mainMenu);
        } else {
          Get.snackbar("failed", loginModel.value?.message ?? "");
        }
      }
      }catch (e) {
            Get.snackbar("failed", e.toString());
      }
    }
  }
}