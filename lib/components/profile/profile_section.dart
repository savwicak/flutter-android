
import 'package:belajar_flutter/components/profile/profile_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:belajar_flutter/colors.dart';

class ProfileSection extends StatelessWidget {
  final String title;
  final List<ProfileMenuItem> items;

  const ProfileSection({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 12),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: NewColors.brown,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(children: items),
        ),
      ],
    );
  }
}
