import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:get/get.dart';

class Agendapage extends StatefulWidget {

  @override
  State<Agendapage> createState() => _AgendapageState();
}
class _AgendapageState extends State<Agendapage> {

  int _currentIndex = 0;
  List<Widget> tabs = const [
    Icon(Bootstrap.house_door),
    Icon(Bootstrap.calendar),
    Icon(Bootstrap.briefcase),
    Icon(Bootstrap.person),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 29, left: 116),
            child: Text(
              "Agenda pessoal",
              style: GoogleFonts.vesperLibre(
                color: const Color(0xff4f4f4f),
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 84, left: 21),
            child: Text(
              "Mês atual",
              style: GoogleFonts.vesperLibre(
                color: const Color(0xff4f4f4f),
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 121, left: 16),
            child: Column(
              children: [
                Container(
                  width: 317,
                  height: 49,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: const Color(0xfff66b0e), width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dia 10 - Segunda",
                          style: GoogleFonts.vesperLibre(
                            color: const Color(0xff4f4f4f),
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: 317,
                  height: 49,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: const Color(0xfff66b0e), width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dia 28 - Sexta",
                          style: GoogleFonts.vesperLibre(
                            color: const Color(0xff4f4f4f),
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ),
        ],
      ),
    );
  }
}
