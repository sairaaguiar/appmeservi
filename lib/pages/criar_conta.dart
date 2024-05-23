import 'package:meserviaplicacao/backend/banco_de_dados.dart';
import 'package:meserviaplicacao/backend/form.dart';
import 'package:meserviaplicacao/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginScreen extends StatefulWidget {
  final String opcConta;
  const LoginScreen({super.key, required this.opcConta});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color corPrincipal = const Color.fromRGBO(246, 107, 14, 1);

  bool checar = false;
  

  final BancoDados bancoDados = BancoDados();

  final Formulario formulario = Formulario();

  @override
  Widget build(BuildContext context) {
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
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 15.0),
              const Icon(
                Bootstrap.google,
                color: Colors.white,
                size: 48.0,
              ),
              const SizedBox(height: 15.0),
              buildFormulario(widget.opcConta)
            ],
          ),
        ));
  }
}
