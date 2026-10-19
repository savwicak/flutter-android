
import 'package:belajar_flutter/colors.dart';
import 'package:belajar_flutter/components/food_cart.dart';
import 'package:belajar_flutter/controller/food_list_controller.dart';
import 'package:belajar_flutter/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodListScreen extends StatelessWidget {
  FoodListScreen({super.key});

  final controller = Get.put(FoodListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NewColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: NewColors.cream,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          "Discover Foods",
          style: TextStyle(
            color: NewColors.brown,
            fontSize: 25,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.6,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: controller.foodData.length,
        itemBuilder: (context, index) {
          final food = controller.foodData[index];

          return FoodCard(
            name: food.name,
            price: food.price,
            description: food.description,
            rating: food.rating,
            imageUrl: food.imageUrl,
            onTap: () {
              Get.toNamed(
                Routes.detailedFoodList,
                arguments: {
                  "name": food.name,
                  "price": food.price,
                  "description": food.description,
                  "rating": food.rating,
                  "review": food.review,
                  "imageUrl": food.imageUrl,
                },
              );
            },
          );
        },
      ),
    );
  }
}
