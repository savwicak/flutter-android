
import 'package:belajar_flutter/colors.dart';
import 'package:belajar_flutter/controller/food_list_detailed_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodListDetailedScreen extends StatelessWidget {
  FoodListDetailedScreen({super.key});

  final controller = Get.put(FoodListDetailedController());

  @override
  Widget build(BuildContext context) {
    final food = controller.food;
    final reviews = controller.reviews;

    return Scaffold(
      backgroundColor: NewColors.white,

      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          food['name'],
          style: TextStyle(
            color: NewColors.brown,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: NewColors.cream,
        iconTheme: IconThemeData(
          color: NewColors.brown,
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Food image
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              food['imageUrl'],
              height: 400,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 200,
                  color: NewColors.cream,
                  child: Icon(
                    Icons.restaurant,
                    size: 50,
                    color: NewColors.orange,
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 20),

          // Food name
          Text(
            food['name'],
            style: TextStyle(
              color: NewColors.brown,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          // Price and rating
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rp ${food['price']}",
                style: TextStyle(
                  color: NewColors.orange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: NewColors.orange,
                    size: 20,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '${food['rating']}',
                    style: TextStyle(
                      color: NewColors.brown,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "(${reviews.length} reviews)",
                    style: TextStyle(
                      color: NewColors.brown,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Description
          Text(
            "Description",
            style: TextStyle(
              color: NewColors.brown,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            food['description'],
            style: TextStyle(
              color: NewColors.brown,
              fontSize: 14,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 25),

          // Customer reviews
          Text(
            "Customer Reviews",
            style: TextStyle(
              color: NewColors.brown,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          ...reviews.map((review) {
            return Container(
              margin: const EdgeInsets.only(bottom: 14),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: NewColors.white,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: NewColors.brown.withValues(
                    alpha: 0.35,
                  ),
                  width: 1.2,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 21,
                        backgroundColor: NewColors.cream,
                        child: Icon(
                          Icons.person_rounded,
                          color: NewColors.brown,
                          size: 24,
                        ),
                      ),

                      const SizedBox(width: 12),

                      Expanded(
                        child: Text(
                          review['name'] ?? 'Anonymous',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: NewColors.brown,
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  Text(
                    review['comment'] ?? '',
                    style: TextStyle(
                      color: NewColors.brown.withValues(
                        alpha: 0.85,
                      ),
                      fontSize: 13,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
