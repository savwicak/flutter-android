
import 'package:get/get.dart';

class FoodListDetailedController extends GetxController {
  late Map<String, dynamic> food;
  late List<Map<String, String>> reviews;

  @override
  void onInit() {
    super.onInit();

    food = Map<String, dynamic>.from(
      Get.arguments as Map,
    );

    reviews = (food['review'] as List)
        .map((item) => Map<String, String>.from(item))
        .toList();
  }
}
