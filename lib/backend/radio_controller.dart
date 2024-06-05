import 'package:get/get.dart';

class MyController extends GetxController {
  int _selectedValue = 0;

  int get selectedValue => _selectedValue;

  void setSelectedValue(int value) {
    _selectedValue = value;
    update();
  }
}