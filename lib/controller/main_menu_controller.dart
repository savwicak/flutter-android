import 'package:belajar_flutter/menus/history_screen.dart';
import 'package:belajar_flutter/menus/homepage_screen.dart';
import 'package:belajar_flutter/menus/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController{
  // variable tanda untuk untuk index stack body mana yang aan tampil
  //action click button navigation Menu

  final RxInt selectedIndex = 0.obs;


  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [
    HomepageScreen(),
    HistoryScreen(),
    ProfileScreen(),
  ];
}