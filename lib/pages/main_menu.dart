import 'package:belajar_flutter/controller/main_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMenu extends StatelessWidget {
  MainMenu({super.key});

  final controller = Get.put(MainMenuController());


  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: IndexedStack(
        children: controller.listPages,
        index: controller.selectedIndex.value,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: controller.changePage,
        currentIndex: controller.selectedIndex.value,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.watch_later),
            label: 'history'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile'
            ),
        ]),
    ));
  }
}