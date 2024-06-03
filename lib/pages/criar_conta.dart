import 'package:meserviaplicacao/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginScreen extends StatelessWidget {
  final String opcConta;
  const LoginScreen({super.key, required this.opcConta});

  final Color corPrincipal = const Color.fromRGBO(246, 107, 14, 1);

  @override
  Widget build(BuildContext context) {
    final tela = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: corPrincipal,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              buildTitulo("Crie uma conta"),
              Text(
                "Criar conta com:",
                style: GoogleFonts.getFont('Varela',
                    fontSize: tela.width < 400 ? 15 : 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 15.0),
              buildFormulario(opcConta)
            ],
          ),
        ));
  }
}
