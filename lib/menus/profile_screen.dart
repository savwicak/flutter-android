
import 'package:belajar_flutter/colors.dart';
import 'package:flutter/material.dart';
import 'package:belajar_flutter/widget/profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F4),

      appBar: AppBar(
        backgroundColor: NewColors.cream,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          "My profile",
          style: TextStyle(
            color: NewColors.brown,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: NewColors.cream,
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                  ),
                  border: Border.all(
                    color: Colors.grey.shade200,
                  ),
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
                          const SizedBox(height: 6),
                          const Text(
                            "graceashcroft@gmail.com",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            "+62 934960402",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Icon(
                      Icons.edit,
                      color: NewColors.brown,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 28),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFFFD900),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(28),
                  bottomRight: Radius.circular(28),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.star_border_purple500_rounded,
                    size: 30,
                    color: Color(0xFF713500),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    "Join GoStar",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF713500),
                    ),
                  ),
                  const Spacer(),
                  const Flexible(
                    child: Text(
                      "Ada reward eksklusif",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF713500),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(
                    Icons.arrow_circle_right,
                    size: 32,
                    color: Color(0xFF713500),
                  ),
                ],
              ),
            ),
            sectionTitle("Preference"),

            menuCard([
              menuItem(
                Icons.security,
                "Keamanan akun",
              ),
              menuItem(
                Icons.add_circle,
                "Gojek PLUS",
                badge: "Promo terbatas",
              ),
              menuItem(
                Icons.credit_card,
                "Metode Pembayaran",
              ),
              menuItem(
                Icons.groups,
                "Akun Keluarga",
                badge: "Baru",
              ),
              menuItem(
                Icons.bookmark,
                "Alamat tersimpan",
                showDivider: false,
              ),
            ]),

            const SizedBox(height: 28),

            sectionTitle("Aktivitas di Gojek"),

            menuCard([
              menuItem(
                Icons.history,
                "Aktivitas",
              ),
              menuItem(
                Icons.local_offer,
                "Promo & voucher",
              ),
              menuItem(
                Icons.shield_outlined,
                "Asuransiku",
                badge: "Baru",
                showDivider: false,
              ),
            ]),

            const SizedBox(height: 28),

            sectionTitle("Pengaturan aplikasi"),

            menuCard([
              menuItem(
                Icons.phone_android,
                "Ikon aplikasi",
              ),
              menuItem(
                Icons.notifications_outlined,
                "Pengaturan notifikasi",
              ),
              menuItem(
                Icons.language,
                "Bahasa",
              ),
              menuItem(
                Icons.info_outline,
                "Tentang aplikasi",
                showDivider: false,
              ),
            ]),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
