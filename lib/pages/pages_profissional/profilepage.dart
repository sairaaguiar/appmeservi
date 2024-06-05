import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:google_fonts/google_fonts.dart';

class Profiles extends StatefulWidget {

  @override
  State<Profiles> createState() => _ProfilesState();
}
class _ProfilesState extends State<Profiles> {
  
  List<Widget> tabs = const [
    Icon(Bootstrap.house_door),
    Icon(Bootstrap.calendar),
    Icon(Bootstrap.briefcase),
    Icon(Bootstrap.person),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Center( // Centralizando o conteúdo da página
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage('URL_DA_IMAGEM_DO_PERFIL'),
              ),
              SizedBox(height: 20.0),
              Text(
                'Nome do Usuário',
                style: GoogleFonts.vesperLibre(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Bio do usuário',
                style: GoogleFonts.vesperLibre(fontSize: 16.0),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Lógica para editar o perfil
                },
                child: Text('Editar Perfil'),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
