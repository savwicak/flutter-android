import 'package:belajar_flutter/colors.dart';
import 'package:belajar_flutter/components/food_cart.dart';
import 'package:belajar_flutter/controller/food_list_controller.dart';
import 'package:belajar_flutter/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class HomepageScreen extends StatelessWidget {
  HomepageScreen({super.key});

    final controller = Get.put(FoodListController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NewColors.white,
      body:Container(
        child:
          SizedBox(
            height: 190,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(16),
              itemCount: controller.foodData.length,
              itemBuilder: (context, index) {
                final food = controller.foodData[index];

                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: SizedBox(
                    width: 400, // lebar setiap card
                    child: FoodCard(
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
                    ),
                  ),
                );
              },
            ),
          ),
      )
    );
  }
}
