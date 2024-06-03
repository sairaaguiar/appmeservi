import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meserviaplicacao/pages/criar_conta.dart';
import 'package:meserviaplicacao/pages/login.dart';
import 'package:meserviaplicacao/pages/op_login.dart';
import 'package:meserviaplicacao/tela_introducao.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MeServi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => OnboardingScreen()),
        GetPage(name: '/home', page: () => const LoginPage()),
        GetPage(
          name: '/criarconta/:opcConta',
          page: () {
            final opcConta = Get.parameters['opcConta'];
            return LoginScreen(opcConta: opcConta!);
          },
        ),
        GetPage(name: '/login', page: () => const Login()),
      ],
    );
  }
}
