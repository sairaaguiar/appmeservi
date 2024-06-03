import 'package:get/get.dart';
import 'package:meserviaplicacao/pages/criar_conta.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic tela = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(246, 107, 14, 1),
        body: SingleChildScrollView(
          child: SafeArea(
              top: true,
              child: Align(
                  child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 124, 0, 0),
                      child: Column(mainAxisSize: MainAxisSize.max, children: [
                        Text(
                          'Crie uma conta',
                          style: GoogleFonts.getFont(
                            'Vesper Libre',
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 35,
                          ),
                        ),
                        Text(
                          'Qual o tipo de conta?',
                          style: GoogleFonts.getFont(
                            'Vesper Libre',
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 50, 0, 20),
                            child: Container(
                                width: 311,
                                height: 286,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(10, 0, 0, 0),
                                          child: RichText(
                                            textScaler:
                                                MediaQuery.of(context).textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                      'Uma conta para contratar\nserviços',
                                                  style: GoogleFonts.getFont(
                                                    'Varela',
                                                    color: const Color.fromRGBO(
                                                        246, 107, 14, 1),
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 18,
                                                  ),
                                                )
                                              ],
                                              style: GoogleFonts.getFont(
                                                'Varela',
                                                color: const Color.fromRGBO(
                                                    246, 107, 14, 1),
                                                fontWeight: FontWeight.normal,
                                                fontSize: 18,
                                              ),
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            // 'context' é usado aqui para navegar para outra tela
                                            const String opConta = "CPF";
                                            Get.offAllNamed('/criarconta/$opConta');
                                          },
                                          icon: const Icon(
                                            Icons.keyboard_arrow_right_rounded,
                                            color:
                                                Color.fromRGBO(246, 107, 14, 1),
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          RichText(
                                            textScaler:
                                                MediaQuery.of(context).textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                      'Uma conta para prestar \nserviços',
                                                  style: GoogleFonts.getFont(
                                                    'Varela',
                                                    color: const Color.fromRGBO(
                                                        246, 107, 14, 1),
                                                    fontSize: 18,
                                                  ),
                                                )
                                              ],
                                              style: GoogleFonts.getFont(
                                                'Varela',
                                                color: const Color.fromRGBO(
                                                    246, 107, 14, 1),
                                                fontSize: 18,
                                              ),
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              // 'context' é usado aqui para navegar para outra tela
                                              const String opConta = "CNPJ";
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const LoginScreen(
                                                          opcConta: opConta,
                                                        )),
                                              );
                                            },
                                            icon: const Icon(
                                              Icons.keyboard_arrow_right_rounded,
                                              color:
                                                  Color.fromRGBO(246, 107, 14, 1),
                                              size: 30,
                                            ),
                                          ),
                                        ]),
                                  ],
                                ))),
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
                                      fontSize: tela < 400 ? 16 : 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    )),
                                TextSpan(
                                    text: ' Login',
                                    style: GoogleFonts.getFont(
                                      'Varela',
                                      fontSize: tela < 400 ? 16 : 18,
                                      color: const Color.fromRGBO(0, 102, 254, 1),
                                      fontWeight: FontWeight.w400,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ])))),
        ));
  }
}
