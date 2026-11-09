
import 'package:flutter/material.dart';
import 'package:belajar_flutter/colors.dart';

// PROFILE HEADER
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
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3CfD5zJSnQtkgnA5h43mVw58_zbDq7krHlOIMZJysGA&s=10',
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
                    "+62 934960402",
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

// SECTION
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

// MENU ITEM
class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? badge;
  final bool showDivider;

  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.title,
    this.badge,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            children: [
              Icon(icon, color: NewColors.brown),
              const SizedBox(width: 14),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              if (badge != null)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 9,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF0CC),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    badge!,
                    style: const TextStyle(fontSize: 10),
                  ),
                ),
              const SizedBox(width: 8),
              const Icon(Icons.chevron_right, color: Colors.grey),
            ],
          ),
        ),
        if (showDivider)
          Divider(height: 1, color: Colors.grey.shade200),
      ],
    );
  }
}
