import 'package:flutter/material.dart';
import 'package:belajar_flutter/colors.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: NewColors.cream,
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(28),
          ),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 42,
              backgroundImage: NetworkImage(
                'https://i.pinimg.com/736x/65/ad/d4/65add4eeb2960167ec4a38a05eea469b.jpg',
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Grace Ashcroft",
                    style: TextStyle(
                      color: NewColors.brown,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "graceashcroft@gmail.com",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  Text(
                    "+62 93496040283",
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ),
            Icon(Icons.edit, color: NewColors.brown),
          ],
        ),
      ),
    );
  }
}
