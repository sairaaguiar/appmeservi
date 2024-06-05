import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserSecurityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Segurança dos Usuários
          Positioned(
            top: 34,
            left: 81,
            child: Text(
              "Segurança dos Usuários",
              style: TextStyle(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w700,
                fontFamily: "VesperLibre",
                fontSize: 18.0,
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
          // Dicas de segurança
          Positioned(
            top: 101,
            left: 68,
            child: Text(
              "Verifique a quantidade de seguidores e compare\n com trabalhos feitos",
              style: TextStyle(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontFamily: "Varela",
                fontSize: 12.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            top: 157,
            left: 68,
            child: Text(
              "Veja ou peça Documentação e Certificações",
              style: TextStyle(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontFamily: "Varela",
                fontSize: 12.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            top: 213,
            left: 68,
            child: Text(
              "Evite pagar o valor total do serviço antes\n da conclusão do trabalho",
              style: TextStyle(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontFamily: "Varela",
                fontSize: 12.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            top: 276,
            left: 68,
            child: Text(
              "Comunique-se Através do Aplicativo",
              style: TextStyle(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontFamily: "Varela",
                fontSize: 12.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            top: 332,
            left: 68,
            child: Text(
              "Relate Comportamentos Suspeitos",
              style: TextStyle(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontFamily: "Varela",
                fontSize: 12.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            top: 377,
            left: 68,
            child: Text(
              "Sempre que possível, acompanhe o serviço\n sendo realizado",
              style: TextStyle(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontFamily: "Varela",
                fontSize: 12.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            top: 430,
            left: 68,
            child: Text(
              "Confirme os Detalhes do Serviço Antes do Início",
              style: TextStyle(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontFamily: "Varela",
                fontSize: 12.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Números de dicas
          Positioned(
            top: 86,
            left: 29,
            child: Text(
              "1",
              style: TextStyle(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontFamily: "VesperLibre",
                fontSize: 30.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            top: 142,
            left: 29,
            child: Text(
              "2",
              style: TextStyle(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontFamily: "VesperLibre",
                fontSize: 30.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            top: 198,
            left: 29,
            child: Text(
              "3",
              style: TextStyle(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontFamily: "VesperLibre",
                fontSize: 30.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            top: 254,
            left: 29,
            child: Text(
              "4",
              style: TextStyle(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontFamily: "VesperLibre",
                fontSize: 30.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            top: 310,
            left: 29,
            child: Text(
              "5",
              style: TextStyle(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontFamily: "VesperLibre",
                fontSize: 30.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            top: 366,
            left: 29,
            child: Text(
              "6",
              style: TextStyle(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontFamily: "VesperLibre",
                fontSize: 30.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            top: 422,
            left: 29,
            child: Text(
              "7",
              style: TextStyle(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontFamily: "VesperLibre",
                fontSize: 30.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
