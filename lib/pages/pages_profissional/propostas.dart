import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:meserviaplicacao/pages/pages_profissional/Mecoins.dart';
import 'category_selection.dart';
import 'package:get/get.dart';

class Propostaspedi extends StatefulWidget {

  @override
  State<Propostaspedi> createState() => _PropostaspediState();
}
class _PropostaspediState extends State<Propostaspedi> {

  int _currentIndex = 0;
  List<Widget> tabs = const [
    Icon(Bootstrap.house_door),
    Icon(Bootstrap.calendar),
    Icon(Bootstrap.briefcase),
    Icon(Bootstrap.person),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text("Pedidos", style: GoogleFonts.getFont("Vesper Libre", fontSize: 25),),
            ),
          ],
        ),
    );
  }
}
