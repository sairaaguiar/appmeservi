import 'package:get/get.dart';
import 'package:flutter/material.dart';

class NavController extends GetxController {
  static NavController get to => Get.find();
  int _selectedValue = 0;
  final PageController pageController = PageController();

  int get selectedValue => _selectedValue;

  void setSelectedValue(int value) {
    _selectedValue = value;
    pageController.jumpToPage(value);
    update();
  }

  void onPageChanged(int page) {
    _selectedValue = page;
    update();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}