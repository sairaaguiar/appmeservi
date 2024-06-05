import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sobre extends StatelessWidget {
  const Sobre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Título "Sobre o MeServi"
          Positioned(
            top: 34,
            left: 97,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Sobre o MeServi",
                style: TextStyle(
                  color: const Color(0xff4f4f4f),
                  fontWeight: FontWeight.w700,
                  fontFamily: "VesperLibre",
                  fontStyle: FontStyle.normal,
                  fontSize: 22.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          // Texto descritivo
          Positioned(
            top: 118,
            left: 29,
            right: 29,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "O MeServi é uma plataforma de intermediação entre pessoas que necessitam de serviços domésticos, como faxina, eletricista, encanador, pedreiro, entre outros, e profissionais qualificados para realizar essas tarefas. Ele oferece uma forma conveniente de encontrar e contratar profissionais confiáveis para realizar serviços em casa, proporcionando facilidade, segurança e praticidade para os usuários. O app possui recursos como avaliações dos profissionais, agendamento de serviços, pagamento online e suporte ao cliente, tornando o processo de contratação e realização dos serviços mais simples e transparente.",
                style: TextStyle(
                  color: const Color(0xff4f4f4f),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Varela",
                  fontStyle: FontStyle.normal,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.left,
              ),
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