import 'package:get/get.dart';
import 'package:meserviaplicacao/backend/banco_de_dados.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meserviaplicacao/backend/signupback.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

const Color corPrincipal = Color.fromRGBO(246, 107, 14, 1);
const Color corContainer = Colors.white;

final formularioController = Get.put(FormularioController());
final bdController = Get.put(BDController());


Widget buildRowContainer(
    String label, IconData icone, String dicaInput, dynamic input,
    {MaskTextInputFormatter? mask}) {
  return LayoutBuilder(
    builder: (context, constraints) {
      dynamic tamanhoTela = MediaQuery.of(context).size.width;
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 320.0,
            height: 80.0,
            decoration: const BoxDecoration(
              color: corContainer,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                      child: Text(
                        label,
                        style: GoogleFonts.getFont(
                          'Varela',
                          color: corPrincipal,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                      child: Icon(
                        icone,
                        color: corPrincipal,
                        size: tamanhoTela < 400 ? 20.0 : 25.0,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      child: FormBuilderTextField(
                            inputFormatters: mask != null ? [mask] : [],
                            obscureText: label == "Senha" ||
                                    label == "Criar senha" ||
                                    label == "Repetir senha"
                                ? !formularioController.senhavisivel.value
                                : false,
                            obscuringCharacter: "*",
                            decoration: InputDecoration(
                              suffixIcon: label == "Senha" ||
                                      label == "Criar senha" ||
                                      label == "Repetir senha"
                                  ? IconButton(
                                      icon: formularioController.senhavisivel.value
                                          ? const Icon(Icons.visibility_off)
                                          : const Icon(Icons.visibility,
                                              color: corPrincipal),
                                      onPressed: () {
                                        formularioController.mostrarSenha();
                                      },
                                    )
                                  : null,
                              border: InputBorder.none,
                              hintText: dicaInput,
                              hintStyle: GoogleFonts.getFont(
                                'Varela',
                                color: const Color.fromARGB(255, 147, 140, 140),
                                fontSize: 15,
                              ),
                            ),
                            keyboardType: label == "CPF" || label == "CNPJ"
                                ? TextInputType.number
                                : TextInputType.text,
                            name: 'text',
                            onChanged: (val) {
                              input(val);
                            },
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}

// Formulario da criação de contas

Widget buildFormulario(String opcao) {
  return LayoutBuilder(builder: (context, constraints) {
    dynamic tela = MediaQuery.of(context).size.width;
    return Form(
          child: GetBuilder<FormularioController>(
            init: FormularioController(),
            builder: (_) {
              return  Column(
            children: [
              opcao == "CNPJ"
                  ? buildRowContainer(
                      "Razão Social",
                      Bootstrap.person,
                      "Ricardo Eletrica Comercial",
                      formularioController.setNome)
                  : buildRowContainer("Nome completo", Bootstrap.person,
                      "Juliana Maria da Silva", formularioController.setNome),
              const SizedBox(height: 8.0),
              opcao == "CNPJ"
                  ? buildRowContainer("CNPJ", Bootstrap.file_earmark_text,
                      "00.000.000/0001-00", formularioController.setCPFCNPJ,
                      mask: formularioController.maskCNPJ())
                  : buildRowContainer("CPF", Bootstrap.file_earmark_text,
                      "000.000.000-00", formularioController.setCPFCNPJ,
                      mask: formularioController.maskCPF()),
              const SizedBox(height: 8.0),
              buildRowContainer(
                "E-mail",
                Bootstrap.envelope,
                "nome@gmail.com",
                formularioController.setEmail,
              ),
              const SizedBox(height: 8.0),
              buildRowContainer("Criar senha", Bootstrap.unlock,
                  "* * * * * * * * * * * * * *", formularioController.setSenha),
              const SizedBox(height: 8.0),
              buildRowContainer(
                  "Repetir senha",
                  Bootstrap.unlock,
                  "* * * * * * * * * * * * * *",
                  formularioController.setSenhaCopia),
              const SizedBox(height: 8.0),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 32.0,
                    width: 32.0,
                    child: Checkbox(
                          value: formularioController.check,
                          onChanged: (value) {
                            formularioController.checkBOX(value!);
                          },
                        )),
                  RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Ao se inscrever, você concorda com nossos',
                          style: GoogleFonts.getFont('Varela',
                              fontSize: tela < 400 ? 12 : 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                            text:
                                '\nTermos & Condições e Política de Privacidade',
                            style: GoogleFonts.getFont(
                              'Varela',
                              fontSize: tela < 400 ? 12 : 14,
                              color: const Color.fromRGBO(0, 102, 254, 1),
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              ElevatedButton(
                onPressed: formularioController.isformValid
                    ? () async {
                        await formularioController.criarUser(context, opcao);
                      }
                    : null,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  minimumSize: MaterialStateProperty.all(const Size(250.0, 50)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: const Text(
                  "Criar conta",
                  style: TextStyle(
                      fontSize: 25.0,
                      color: corPrincipal,
                      fontFamily: "Vesper",
                      fontWeight: FontWeight.w700),
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.offAllNamed("/login");
                },
                child: RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'Ja tem uma conta?',
                          style: GoogleFonts.getFont(
                            'Varela',
                            fontSize: tela < 400 ? 14 : 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          )),
                      TextSpan(
                          text: ' Login',
                          style: GoogleFonts.getFont(
                            'Varela',
                            fontSize: tela < 400 ? 14 : 18,
                            color: const Color.fromRGBO(0, 102, 254, 1),
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                ),
              ),
            ],
          );
          },) 
         
        );
  });
}

Widget buildTitulo(String titulo) {
  return LayoutBuilder(builder: (context, constraints) {
    dynamic tela = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: tela < 400 ? 45 : 80),
      child: Text(
        titulo,
        style: const TextStyle(
            fontFamily: 'Vesper',
            fontSize: 35,
            color: Colors.white,
            fontWeight: FontWeight.w700),
      ),
    );
  });
}
