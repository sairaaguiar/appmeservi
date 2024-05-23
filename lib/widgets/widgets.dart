import 'package:meserviaplicacao/backend/banco_de_dados.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meserviaplicacao/backend/form.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

const Color corPrincipal = Color.fromRGBO(246, 107, 14, 1);
const Color corContainer = Colors.white;
final BancoDados bancoDados = BancoDados();
final Formulario formulario = Formulario();


Widget buildRowContainer(String label, IconData icone, String dicaInput, dynamic input, {MaskTextInputFormatter? mask}) {
  
  return LayoutBuilder(
    builder: (context, constraints) {
      dynamic tamanhotela = MediaQuery.of(context).size.width;
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 310.0,
            height: tamanhotela < 400 ? 65.0 : 80.0,
            decoration: const BoxDecoration(
              color: corContainer,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
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
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                      child: Icon(icone, color: corPrincipal, size: tamanhotela < 400 ? 20.0 : 25.0),
                    ),
                    SizedBox(
                      width: tamanhotela < 400 ? 200.0 : 255,
                      height: tamanhotela < 400 ? 35.0 : 51.0,
                      child: TextFormField(
                        inputFormatters: mask != null ? [mask] : null,
                        onChanged: input,
                        autofocus: true,
                        obscureText: label == "Criar senha" || label == "Repetir senha"  || label == "Senha" ? true : false,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          /*errorText: label == "Email" ? formulario.validarEmail ? null : "O email está incompleto"
                          : label == "CPF" || label == "CNPJ" ? formulario.validarCPFCNPJ ? null : "O CPF/CNPJ está incompleto"
                          : null,*/
                          labelStyle: GoogleFonts.getFont(
                            'Varela',
                            letterSpacing: 0,
                          ),
                          hintText: dicaInput,
                          hintStyle: GoogleFonts.getFont(
                            'Varela',
                            color: const Color(0xFFD9D9D9),
                            fontSize: 15,
                          ),
                          
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                        style: GoogleFonts.getFont(
                          'Varela',
                          color: const Color(0xFFD9D9D9),
                          fontSize: 18,
                          letterSpacing: 0,
                        ),
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
  return LayoutBuilder(builder: (context, constraints){
    dynamic tela = MediaQuery.of(context).size.width;
        return Observer(
          builder: (_) {
            return  Form(
                      child: Column(
                        children: [
                          opcao == "CNPJ"
                              ? buildRowContainer("Razão Social",
                                  Bootstrap.person, "Ricardo Eletrica Comercial", formulario.setNome)
                              : buildRowContainer("Nome completo",
                                  Bootstrap.person, "Juliana Maria da Silva", formulario.setNome),
                          const SizedBox(height: 5.0),
                
                          opcao == "CNPJ"
                              ? buildRowContainer("CNPJ",
                                  Bootstrap.file_earmark_text, "00.000.000/0001-00", formulario.setCPFCNPJ, mask: formulario.maskCNPJ())
                              : buildRowContainer("CPF",
                                  Bootstrap.file_earmark_text, "000.000.000-00", formulario.setCPFCNPJ, mask: formulario.maskCPF()),
                          const SizedBox(height: 5.0),
                          
                          buildRowContainer("E-mail", Bootstrap.envelope,
                              "nome@gmail.com", formulario.setEmail),
                          const SizedBox(height: 5.0),
                
                          buildRowContainer("Criar senha",
                              Bootstrap.unlock, "****************", formulario.setSenha),
                          const SizedBox(height: 5.0),
                
                          buildRowContainer("Repetir senha",
                              Bootstrap.unlock, "****************", formulario.setSenhaCopia),
                          const SizedBox(height: 8.0),
                
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 32.0,
                                width: 32.0,
                                child: Checkbox(value: formulario.check, onChanged: (value) {
                                  formulario.checkBOX(value!);
                                },),
                              ),
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
                            onPressed: formulario.isformValid ? () async {
          
                                  await bancoDados.criarUser(context,
                                  formulario.nome,
                                  formulario.senha,
                                  formulario.email
                                  );
                                
                              }: null,
                              
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.white),
                                minimumSize: MaterialStateProperty.all(const Size(250.0, 50)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0),
                                  ),
                                ),
                              ),
                              
                              child: const Text(
                                "Criar conta",
                                style: TextStyle(fontSize: 25.0, color: corPrincipal, fontFamily: "Vesper", fontWeight: FontWeight.w700),
                              ),
                            ),
                          
                          TextButton(
                            onPressed: () {
                              context.goNamed('/login');
                            },
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Ja tem uma conta?',
                                      style: GoogleFonts.getFont(
                                        'Varela',
                                        fontSize: tela < 400 ? 13 : 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  TextSpan(
                                      text: ' Login',
                                      style: GoogleFonts.getFont(
                                        'Varela',
                                        fontSize: tela < 400 ? 13 : 14,
                                        color: const Color.fromRGBO(0, 102, 254, 1),
                                        fontWeight: FontWeight.w400,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
          }
         
        );

      }
    );
  }


Widget buildTitulo(String titulo) {
  return LayoutBuilder(
    builder: (context, constraints) {
      dynamic tela = MediaQuery.of(context).size.width;
      return Padding(
      padding: EdgeInsets.only(top: tela < 400 ? 60 : 80),
      child: Text(
        titulo,
        style: const TextStyle(
            fontFamily: 'Vesper',
            fontSize: 35,
            color: Colors.white,
            fontWeight: FontWeight.w700),
      ),);

    });
    
}


Widget buildBotao(String texto, double largura, double textsize, BuildContext context) {
  return LayoutBuilder(builder: (context, constraints) {
    return ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  minimumSize: MaterialStateProperty.all(Size(largura, 50)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0),
                    ),
                  ),
                ),
                onPressed: () async {
                  
                  await bancoDados.loginUser(context, formulario.nome, formulario.senha);
                },
                child: Text(
                  texto,
                  style: TextStyle(fontSize: textsize, color: corPrincipal, fontFamily: "Vesper", fontWeight: FontWeight.w700),
                ),
              );

  });
    
}