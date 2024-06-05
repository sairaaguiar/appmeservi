import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meserviaplicacao/pages/categorias.dart';
import 'package:meserviaplicacao/pages/config.dart';
import 'package:meserviaplicacao/pages/criar_conta.dart';
import 'package:meserviaplicacao/pages/inicio_page.dart';
import 'package:meserviaplicacao/pages/login.dart';
import 'package:meserviaplicacao/pages/meuspedidos.dart';
import 'package:meserviaplicacao/pages/op_login.dart';
import 'package:meserviaplicacao/pages/pages_drawer/excluirconta.dart';
import 'package:meserviaplicacao/pages/pages_drawer/faleconosco.dart';
import 'package:meserviaplicacao/pages/pages_drawer/seg.dart';
import 'package:meserviaplicacao/pages/pages_drawer/sobreoapp.dart';
import 'package:meserviaplicacao/pages/pages_profissional/Agenda.dart';
import 'package:meserviaplicacao/pages/pages_profissional/Homepage.dart';
import 'package:meserviaplicacao/pages/pages_profissional/profilepage.dart';
import 'package:meserviaplicacao/pages/pages_profissional/propostas.dart';
import 'package:meserviaplicacao/pages/paginalocal.dart';
import 'package:meserviaplicacao/pages/publicar.dart';
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
        GetPage(name: '/excluir', page: () => MeusPedidosApp()),
        GetPage(name: '/inicioprof', page: () =>  HomePage()),
        GetPage(name: '/agendapage', page: () =>  Agendapage()),
        GetPage(name: '/propostapage', page: () =>  Propostaspedi()),
        GetPage(name: '/profilepage', page: () =>  Profiles()),

        //Drawer
        GetPage(name: '/config', page: () =>  const ConfigScreen()),
        GetPage(name: '/seguranca', page: () =>  UserSecurityPage()),
        GetPage(name: '/faleconosco', page: () =>  HelpPage()),

        //Pedidos
        GetPage(name: '/categorias', page: () =>  Categorias()),
        GetPage(name: '/local', page: () =>  LocalPedido()),
        GetPage(name: '/faleconosco', page: () =>  HelpPage()),


       
        GetPage(name: '/config', page: () => const ConfigScreen()),
        GetPage(name: '/localpedidos', page: () => LocalPedido()),
        GetPage(name: '/categorias', page: () => Categorias()),
        GetPage(name: '/publicar', page: () => DataPublicada()),

        // Usuario 
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
        GetPage(name: '/inicio', page: () => TelaInicio()),

      ],
    );
  }
}
