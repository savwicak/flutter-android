
import 'package:flutter/material.dart';

Widget sectionTitle(String title) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(24, 0, 24, 14),
    child: Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xFF454545),
      ),
    ),
  );
}

Widget menuCard(List<Widget> items) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 16),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(28),
      border: Border.all(
        color: Colors.grey.shade200,
      ),
    ),
    child: Column(
      children: items,
    ),
  );
}

Widget menuItem(
  IconData icon,
  String title, {
  String? badge,
  bool showDivider = true,
}) {
  return Column(
    children: [
      InkWell(
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: [
              Icon(
                icon,
                size: 27,
                color: const Color(0xFF555555),
              ),

              const SizedBox(width: 20),

              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ),

              if (badge != null) ...[
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF008A27),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    badge,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
              ],

              const Icon(
                Icons.chevron_right,
                size: 28,
                color: Colors.black87,
              ),
            ],
          ),
        ),
      ),

      if (showDivider)
        Divider(
          height: 1,
          thickness: 1,
          indent: 48,
          color: Colors.grey.shade200,
        ),
    ],
  );
}