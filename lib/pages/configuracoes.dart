import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:meserviaplicacao/backend/banco_de_dados.dart';
import 'package:meserviaplicacao/widgets/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // Configurações
            const PositionedDirectional(
              top: 27,
              start: 108,
              child: Text(
                "Configurações",
                style: TextStyle(
                  color: Color(0xff4f4f4f),
                  fontWeight: FontWeight.w700,
                  fontFamily: "VesperLibre",
                  fontStyle: FontStyle.normal,
                  fontSize: 22.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            // Informações pessoais
            const PositionedDirectional(
              top: 97,
              start: 34,
              child: Text(
                "Informações pessoais",
                style: TextStyle(
                  color: Color(0xff4f4f4f),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Varela",
                  fontStyle: FontStyle.normal,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            // Privacidade e Segurança
            const PositionedDirectional(
              top: 158,
              start: 29,
              child: Text(
                "Privacidade e Segurança",
                style: TextStyle(
                  color: Color(0xff4f4f4f),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Varela",
                  fontStyle: FontStyle.normal,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            // arrow-left
            PositionedDirectional(
              top: 34,
              start: 25,
              child: Stack(
                children: [
                  // Vector 1
                  PositionedDirectional(
                    top: 0,
                    start: 0.001,
                    child: Container(
                      width: 8.708,
                      height: 15,
                      color: const Color(0xff525252),
                    ),
                  ),
                  // Vector 2
                  PositionedDirectional(
                    top: 6.655,
                    start: 0,
                    child: Container(
                      width: 18,
                      height: 1.669,
                      color: const Color(0xff525252),
                    ),
                  ),
                ],
              ),
            ),
            // Rectangle 88
            PositionedDirectional(
              top: 747,
              start: 0,
              child: Container(
                width: 360,
                height: 53,
                color: const Color(0xfff66b0e),
              ),
            ),
            // home
            PositionedDirectional(
              top: 758,
              start: 47,
              child: Stack(
                children: [
                  // Vector 1
                  PositionedDirectional(
                    top: 0,
                    start: 0,
                    child: Container(
                      width: 17.477,
                      height: 7.5,
                      color: const Color(0xffffffff),
                    ),
                  ),
                  // Vector 2
                  PositionedDirectional(
                    top: 4.5,
                    start: 2,
                    child: Container(
                      width: 13.5,
                      height: 11,
                      color: const Color(0xffffffff),
                    ),
                  ),
                  // Vector 3
                  PositionedDirectional(
                    top: 7,
                    start: 6,
                    child: Container(
                      width: 5.5,
                      height: 8.5,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ],
              ),
            ),
            // Segundo
            const PositionedDirectional(
              top: 777,
              start: 126,
              child: Text(
                "Segundo",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w400,
                  fontFamily: "VesperLibre",
                  fontStyle: FontStyle.normal,
                  fontSize: 10.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            // Perfil
            const PositionedDirectional(
              top: 777,
              start: 298,
              child: Text(
                "Perfil",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w400,
                  fontFamily: "VesperLibre",
                  fontStyle: FontStyle.normal,
                  fontSize: 10.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            // Pedidos
            const PositionedDirectional(
              top: 777,
              start: 211,
              child: Text(
                "Pedidos",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w400,
                  fontFamily: "VesperLibre",
                  fontStyle: FontStyle.normal,
                  fontSize: 10.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            // Início
            const PositionedDirectional(
              top: 777,
              start: 41,
              child: Text(
                "Início",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w400,
                  fontFamily: "VesperLibre",
                  fontStyle: FontStyle.normal,
                  fontSize: 10.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            // briefcase
            PositionedDirectional(
              top: 758,
              start: 219,
              child: Container(
                width: 17.5,
                height: 16.504,
                color: const Color(0xffffffff),
              ),
            ),
            // user
            PositionedDirectional(
              top: 759,
              start: 303,
              child: Container(
                width: 16.667,
                height: 16,
                color: const Color(0xffffffff),
              ),
            ),
            // user plus
            PositionedDirectional(
              top: 758,
              start: 137,
              child: Container(
                width: 16.667,
                height: 16,
                color: const Color(0xffffffff),
              ),
            ),
          ],
        ),
      ),
    );
  }
}