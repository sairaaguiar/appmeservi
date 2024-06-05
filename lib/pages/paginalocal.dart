import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:meserviaplicacao/backend/controllerpedido.dart';
import 'package:meserviaplicacao/backend/radio_controller.dart';

class LocalPedido extends StatelessWidget {
  LocalPedido({super.key});

  final publicar = Get.put(PedidoController());

  @override
  Widget build(BuildContext context) {
    final tela = MediaQuery.of(context).size;
    const corPrincipal = Color.fromRGBO(246, 107, 14, 1);
    final controller = Get.put(MyController());
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Bootstrap.arrow_left,
              color: corPrincipal,
            ),
            onPressed: () {
              Get.offNamed('/categorias');
            },
          ),
          title: Get.arguments != null
              ? Text(
                  Get.arguments,
                  style: GoogleFonts.getFont("Vesper Libre",
                      fontSize: 25, color: corPrincipal),
                )
              : Text("Texto"),
        ),
        body: GetBuilder<MyController>(builder: (_) {
          return ListView(
            children: [
              RadioListTile(
                title: Text(
                  'Apartamento',
                  style: GoogleFonts.getFont(
                    "Vesper Libre",
                    fontSize: 18,
                    color: controller.selectedValue == 1
                        ? corPrincipal
                        : const Color.fromARGB(255, 183, 180, 180),
                  ),
                ),
                value: 1,
                groupValue: controller.selectedValue,
                onChanged: (value) {
                  controller.setSelectedValue(value as int);
                },
              ),
              RadioListTile(
                title: Text(
                  'Casa',
                  style: GoogleFonts.getFont(
                    "Vesper Libre",
                    fontSize: 18,
                    color: controller.selectedValue == 2
                        ? corPrincipal
                        : const Color.fromARGB(255, 183, 180, 180),
                  ),
                ),
                value: 2,
                groupValue: controller.selectedValue,
                onChanged: (value) {
                  controller.setSelectedValue(value as int);
                },
              ),
              RadioListTile(
                title: Text(
                  'Comercial / Escritório',
                  style: GoogleFonts.getFont(
                    "Vesper Libre",
                    fontSize: 18,
                    color: controller.selectedValue == 3
                        ? corPrincipal
                        : const Color.fromARGB(255, 183, 180, 180),
                  ),
                ),
                value: 3,
                groupValue: controller.selectedValue,
                onChanged: (value) {
                  controller.setSelectedValue(value as int);
                },
              ),
              RadioListTile(
                title: Text(
                  'Condominio',
                  style: GoogleFonts.getFont(
                    "Vesper Libre",
                    fontSize: 18,
                    color: controller.selectedValue == 4
                        ? corPrincipal
                        : const Color.fromARGB(255, 183, 180, 180),
                  ),
                ),
                value: 4,
                groupValue: controller.selectedValue,
                onChanged: (value) {
                  controller.setSelectedValue(value as int);
                },
              ),
              RadioListTile(
                title: Text(
                  'Outro',
                  style: GoogleFonts.getFont(
                    "Vesper Libre",
                    fontSize: 18,
                    color: controller.selectedValue == 5
                        ? corPrincipal
                        : const Color.fromARGB(255, 183, 180, 180),
                  ),
                ),
                value: 5,
                groupValue: controller.selectedValue,
                onChanged: (value) {
                  controller.setSelectedValue(value as int);
                },
              ),
              Column(
                children: [
                  SizedBox(
                      width: tela.width * 0.8,
                      child: Text(
                        "Endereço",
                        style: GoogleFonts.getFont("Vesper Libre",
                            fontSize: 22,
                            color: const Color.fromRGBO(246, 107, 14, 1)),
                      )),
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
                            labelText: "Rua",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
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
                            labelText: "Número",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
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
                            labelText: "Bairro",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
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
                            labelText: "Cidade",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
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
                            labelText: "Estado",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: tela.width * 0.8,
                    child: Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 223, 219, 219),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                            onPressed: () {
                              Get.offNamed('/categorias');
                            },
                            child: Text(
                              "Voltar",
                              style: GoogleFonts.getFont("Vesper Libre",
                                  color: const Color.fromARGB(255, 86, 85, 85),
                                  fontSize: 16),
                            )),
                        const SizedBox(width: 65.0),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(tela.width * 0.4, 0),
                                backgroundColor:
                                    const Color.fromRGBO(246, 107, 14, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                            onPressed: () {
                              Get.offAllNamed('/publicar');
                            },
                            child: Text(
                              "Próximo",
                              style: GoogleFonts.getFont("Vesper Libre",
                                  color: Colors.white, fontSize: 16),
                            ))
                      ],
                    ),
                  ),
                ],
              )
            ],
          );
        }));
  }
}
