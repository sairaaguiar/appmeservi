import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:meserviaplicacao/backend/loginback.dart';

const Color corPrincipal = Color.fromRGBO(246, 107, 14, 1);
const Color corContainer = Colors.white;
final controller = Get.put(LoginForm());

Widget containerLogin(
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
                            ? !controller.senhavisivel
                            : false,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          suffixIcon: label == "Senha" ||
                                  label == "Criar senha" ||
                                  label == "Repetir senha"
                              ? IconButton(
                                  icon: controller.senhavisivel
                                      ? const Icon(Icons.visibility_off)
                                      : const Icon(Icons.visibility,
                                          color: corPrincipal),
                                  onPressed: () {
                                    controller.mostrarSenha();
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

class Login extends StatelessWidget {
  final bool isLoggedin = false;

  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color.fromRGBO(246, 107, 14, 1),
        body: SingleChildScrollView(
            child: GetBuilder<LoginForm>(
                init: LoginForm(),
                builder: (_) {
                  return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        const SizedBox(height: 107.0),
                        Text(
                          "Entrar",
                          style: GoogleFonts.getFont('Vesper Libre',
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 15.0),
                        Text(
                          "Entrar na sua conta:",
                          style: GoogleFonts.getFont('Varela',
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 22.0),
                        const SizedBox(height: 38.0),
                        containerLogin("E-mail", Bootstrap.envelope,
                            "fernando123@gmail.com", controller.setNome),
                        const SizedBox(height: 8.0),
                        containerLogin("Senha", Bootstrap.unlock,
                            "* * * * * * * * * * * * * *", controller.setSenha),
                        const SizedBox(height: 10.0),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            minimumSize: MaterialStateProperty.all(
                                const Size(200.0, 50)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          onPressed: controller.validarLogin
                              ? () async {
                                  await controller.loginUser(
                                      Get.context!,
                                      controller.nome,
                                      controller.senha);
                                }
                              : null,
                          child: const Text(
                                  "Entrar",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: corPrincipal,
                                      fontFamily: "Vesper",
                                      fontWeight: FontWeight.w700),
                                ),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.offAllNamed("/home");
                            },
                            child: Text(
                              "Criar conta",
                              style: GoogleFonts.getFont("Varela",
                                  fontSize: 20,
                                  color: const Color.fromRGBO(0, 102, 254, 1)),
                            ))
                      ]);
                })));
  }
}
