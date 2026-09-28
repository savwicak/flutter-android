import 'package:get/get.dart';

class CalculatorController extends GetxController{
  var hasilHitung = 0.0.obs; // buat update ke UI
  var warnMessage = "".obs;

  //method tambah kurang kali bagi
  void addition(double angka1, double angka2){
    double additionResult = angka1 + angka2;
    hasilHitung.value = additionResult;
    warnMessage.value = '';
  }

  void substraction(double angka1, double angka2){
    double substractionResult = angka1 - angka2;
    hasilHitung.value = substractionResult;
    warnMessage.value = '';
  }

  void multiplication(double angka1, double angka2){
    double multiplicationResult = angka1 * angka2;
    hasilHitung.value = multiplicationResult;
    warnMessage.value = '';
  }

  void division(double angka1, double angka2){
    if (angka2 == 0 ){
      warnMessage.value = "Second number cannot be 0";
      return;
    }

    double divisionResult = angka1 / angka2;
    hasilHitung.value = divisionResult;
    warnMessage.value = '';
  }
}