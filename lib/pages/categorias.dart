import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class Categorias extends StatelessWidget {
  Categorias({super.key});

  final Map<String, List<String>> categorias = {
    "Limpeza": [
      "Limpeza geral",
      "Limpeza pesada",
      "Limpeza pós-obra",
      "Limpeza pré mudança",
    ],
    "Manutenção": [
      "Manutenção geral",
      "Manutenção elétrica",
      "Manutenção hidráulica",
      "Pintura e acabamento",
      "Marcenaria",
      "Serviço de emergência",
    ],
    "Construção": [
      "Construção geral",
      "Fundação e estrutura",
      "Acabamento",
      "Cobertura e telhado",
    ],
    "Casa": [
      "Passadoria de roupas",
      "Jardinagem",
    ],
  };

  @override
  Widget build(BuildContext context) {
    final argumento = Get.arguments; 
    final listaSelecionada = categorias[argumento] ?? []; 

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Text(
            "Qual tipo de ${argumento ?? ''}",
            style: GoogleFonts.getFont(
              "Vesper Libre",
              fontSize: 25,
              color: const Color.fromRGBO(246, 107, 14, 1),
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Bootstrap.arrow_left,
            color: Color.fromRGBO(246, 107, 14, 1),
          ),
          onPressed: () {
            Get.offNamed('/inicio');
          },
        ),
      ),
      body: ListView.builder(
        itemCount: listaSelecionada.length + 1, 
        itemBuilder: (context, index) {
          if (index == 0) {
            return ListTile(
              title: Text(
                argumento ?? 'Categoria Desconhecida',
                style: GoogleFonts.getFont("Vesper Libre", fontSize: 20),
              ),
            );
          }

          final item = listaSelecionada[index - 1]; 
          return ListTile(
            onTap: () {
              Get.offNamed("/localpedidos", arguments: item);
            },
            title: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.grey, width: 1.0),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      item,
                      style: GoogleFonts.getFont(
                        "Vesper Libre",
                        fontSize: 18,
                        color: const Color.fromRGBO(246, 107, 14, 1),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: Color.fromRGBO(246, 107, 14, 1),
                    size: 30,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
