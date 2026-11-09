
import 'package:belajar_flutter/components/profile/profile_header.dart';
import 'package:belajar_flutter/components/profile/profile_menu_item.dart';
import 'package:belajar_flutter/components/profile/profile_section.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F4),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileHeader(),
            Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 28),
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color(0xFFFFD900),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(28),
                ),
              ),
              child: const Row(
                children: [
                  Icon(Icons.star_border_purple500_rounded,
                      color: Color(0xFF713500), size: 30),
                  SizedBox(width: 12),
                  Text(
                    "Join GoStar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF713500),
                    ),
                  ),
                  Spacer(),
                  Flexible(
                    child: Text(
                      "Ada reward eksklusif",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF713500),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_circle_right,
                      color: Color(0xFF713500), size: 32),
                ],
              ),
            ),

            ProfileSection(
              title: "Preference",
              items: const [
                ProfileMenuItem(icon: Icons.security, title: "Keamanan akun"),
                ProfileMenuItem(
                  icon: Icons.add_circle,
                  title: "Gojek PLUS",
                  badge: "Promo terbatas",
                ),
                ProfileMenuItem(
                  icon: Icons.credit_card,
                  title: "Metode Pembayaran",
                ),
                ProfileMenuItem(
                  icon: Icons.groups,
                  title: "Akun Keluarga",
                  badge: "Baru",
                ),
                ProfileMenuItem(
                  icon: Icons.bookmark,
                  title: "Alamat tersimpan",
                  showDivider: false,
                ),
              ],
            ),

            const SizedBox(height: 28),

            ProfileSection(
              title: "Aktivitas di Gojek",
              items: const [
                ProfileMenuItem(icon: Icons.history, title: "Aktivitas"),
                ProfileMenuItem(
                  icon: Icons.local_offer,
                  title: "Promo & voucher",
                ),
                ProfileMenuItem(
                  icon: Icons.shield_outlined,
                  title: "Asuransiku",
                  badge: "Baru",
                  showDivider: false,
                ),
              ],
            ),

            const SizedBox(height: 28),

            ProfileSection(
              title: "Pengaturan aplikasi",
              items: const [
                ProfileMenuItem(
                  icon: Icons.phone_android,
                  title: "Ikon aplikasi",
                ),
                ProfileMenuItem(
                  icon: Icons.notifications_outlined,
                  title: "Pengaturan notifikasi",
                ),
                ProfileMenuItem(icon: Icons.language, title: "Bahasa"),
                ProfileMenuItem(
                  icon: Icons.info_outline,
                  title: "Tentang aplikasi",
                  showDivider: false,
                ),
              ],
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
