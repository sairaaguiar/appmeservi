
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:meserviaplicacao/backend/form.dart';
import 'package:meserviaplicacao/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final Formulario formulario = Formulario();
  bool isLoggedin = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromRGBO(246, 107, 14, 1),

      body:SingleChildScrollView(
        child: Observer(
          builder: (_) {
            return  Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget> [
              
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
                    "Entrar com conta:",
                    style: GoogleFonts.getFont('Varela',
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
          
              const SizedBox(height: 22.0),
          
              const Icon(
                    Bootstrap.google,
                    color: Colors.white,
                    size: 48,
                  ),
          
              const SizedBox(height: 38.0),
              buildRowContainer("Nome do Usuário", Bootstrap.envelope, "FernandoGomes", formulario.setNome),
              const SizedBox(height: 5.0),
              buildRowContainer("Senha", Bootstrap.unlock, "****************", formulario.setSenha),
              const SizedBox(height: 30.0),

              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  minimumSize: MaterialStateProperty.all(const Size(200.0, 50)),
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
                  "Entrar",
                  style: TextStyle(fontSize: 20.0, color: corPrincipal, fontFamily: "Vesper", fontWeight: FontWeight.w700),
                ),
              ),
              TextButton(onPressed: (){
                
                
              }
              , child: const Text("Esqueci minha senha", style: TextStyle(fontSize:15, color:Colors.white))),
            ]
          
          );
          }
        ),
      )
    );
  }
}


