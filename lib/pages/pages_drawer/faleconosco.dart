import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Título "Central de ajuda"
          Positioned(
            top: 30,
            left: 107,
            child: Text(
              "Central de ajuda",
              style: TextStyle(
                color: const Color(0xff4f4f4f),
                fontWeight: FontWeight.w700,
                fontFamily: "VesperLibre",
                fontSize: 18.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Subtítulo "E-mail"
          Positioned(
            top: 99,
            left: 47,
            child: Text(
              "E-mail",
              style: TextStyle(
                color: const Color(0xff4f4f4f),
                fontWeight: FontWeight.w500,
                fontFamily: "VesperLibre",
                fontSize: 18.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Subtítulo "Whatsapp"
          Positioned(
            top: 192,
            left: 47,
            child: Text(
              "Whatsapp",
              style: TextStyle(
                color: const Color(0xff4f4f4f),
                fontWeight: FontWeight.w500,
                fontFamily: "VesperLibre",
                fontSize: 18.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Texto descritivo do E-mail
          Positioned(
            top: 133,
            left: 46,
            right: 46,
            child: Text(
              "Entre em contato através do e-mail: CentralajudaMeServi@gmail.com",
              style: TextStyle(
                color: const Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontFamily: "Varela",
                fontSize: 16.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Texto descritivo do Whatsapp
          Positioned(
            top: 235,
            left: 47,
            right: 47,
            child: Text(
              "Entre em contato por mensagem: (81)91234-5678",
              style: TextStyle(
                color: const Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontFamily: "Varela",
                fontSize: 16.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Botão de voltar (arrow-left)
          Positioned(
            top: 39,
            left: 20,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Color(0xff525252)),
              onPressed: () {
                Get.offAllNamed('/inicio');
              },
            ),
          ),
          // Barra inferior
         
        ],
      ),
    );
  }
}
