import 'package:get/get.dart';
import 'package:meserviaplicacao/backend/loginback.dart'; // Importe seu LoginBack

class LoginController extends GetxController {
  final LoginForm loginForm = Get.put(LoginForm()); // Injete seu LoginBack

  @override
  void onInit() {
    super.onInit();// Chame o auto-login aqui
  }
}