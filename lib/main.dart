
import 'package:meserviaplicacao/pages/criar_conta.dart';
import 'package:meserviaplicacao/pages/login.dart';
import 'package:meserviaplicacao/pages/map_page.dart';
import 'package:meserviaplicacao/pages/op_login.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future main() async {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  
  routes: <RouteBase>[
    GoRoute(
      name: "home",
      path: "/",
      builder: (context, state) {
        return const LoginPage();

      }),

      GoRoute(
        name: 'criarconta',
        path: '/criarconta/:opcConta', // Defina o parâmetro opcConta
        builder: (context, state) {
          final opcConta = state.pathParameters['opcConta'];
          return LoginScreen(opcConta: opcConta!);
        }),
        GoRoute(
          name: 'login',
          path: '/login',
          builder: (context, state)  {
            return const Login();

          }),

        GoRoute( 
          name: 'inicio',
          path: '/inicio',
          builder: (BuildContext context, GoRouterState state) {
            return const Mapa();
          }
            
        ),
      ],
  );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String aux = "";
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'MeServi',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: _router,
      );
  }
}


