import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Excluirconta extends StatelessWidget {
  const Excluirconta({super.key});

  @override
  Widget build(BuildContext context) {
    final tela = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // Título "Privacidade"
          Positioned(
            top: 19,
            left: 121,
            child: Text(
              "Privacidade",
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
          // Subtítulo "Confirme sua identidade"
          Positioned(
            top: 86,
            left: 11,
            child: Text(
              "Confirme sua identidade",
              style: TextStyle(
                color: const Color(0xff4f4f4f),
                fontWeight: FontWeight.w700,
                fontFamily: "VesperLibre",
                fontStyle: FontStyle.normal,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Texto descritivo
          Positioned(
            top: 132,
            left: 27,
            right: 27,
            child: Text(
              "Por motivos de segurança, você precisará inserir o código enviado para seu e-mail e confirmar sua identidade com informações pessoais",
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
          // Instrução "Digite os 3 primeiros números do seu CPF"
          Positioned(
            top: 255,
            left: 22,
            child: Column(
              children: [
                Text(
                  "Digite os 3 primeiros números do seu CPF",
                  style: TextStyle(
                    color: const Color(0xff4f4f4f),
                    fontWeight: FontWeight.w700,
                    fontFamily: "VesperLibre",
                    fontStyle: FontStyle.normal,
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.left,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: SizedBox(
                    width: tela.width * 0.8, // define a largura do SizedBox
                    height: 45,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Primeiro três números do CPF",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Botão "Excluir conta"
          Positioned(
            top: 400,
            left: 32,
            right: 32,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(tela.width * 0.3, 0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  backgroundColor: const Color(0xfff66b0e)),
              onPressed: () {},
              child: Center(
                child: Text(
                  "Excluir conta",
                  style: TextStyle(
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                    fontFamily: "VesperLibre",
                    fontStyle: FontStyle.normal,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
          // Botão de voltar (arrow-left)
          Positioned(
            top: 29,
            left: 33,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Color(0xff525252)),
              onPressed: () {
                Get.offAllNamed("/inicio");
              },
            ),
          ),
          // Barra inferior
        ],
      ),
    );
  }
}
