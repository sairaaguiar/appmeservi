import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuperServi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Stack(
          children: [
            PositionedDirectional(
              top: 25,
              start: 112,
              child: Text(
                "Super Serviços",
                style: GoogleFonts.vesperLibre(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            PositionedDirectional(
              top: 180,
              start: 26,
              child: Text(
                "Benefícios",
                style: GoogleFonts.vesperLibre(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            PositionedDirectional(
              top: 85,
              start: 26,
              child: Text(
                "Garanta o melhor plano para conseguir mais serviços",
                style: GoogleFonts.varela(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            PositionedDirectional(
              top: 218,
              start: 45,
              child: Text(
                "Ao comprar super serviços você fica 20 dias na lista dos principais profissionais do MeServi.",
                style: GoogleFonts.varela(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            PositionedDirectional(
              top: 297,
              start: 40,
              child: Text(
                "Com esse plano a cada serviço feito você ganha um bônus de 8 MeCoins",
                style: GoogleFonts.varela(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            PositionedDirectional(
              top: 603,
              start: 45,
              child: Text(
                "Quando efetuar o pagamento o dinheiro será revertido para MeCoins na sua conta",
                style: GoogleFonts.varela(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            PositionedDirectional(
              top: 664,
              start: 53,
              child: Container(
                width: 255,
                height: 53,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color(0xfff66b0e),
                ),
              ),
            ),
            PositionedDirectional(
              top: 674,
              start: 156,
              child: Text(
                "Feito!",
                style: GoogleFonts.vesperLibre(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            PositionedDirectional(
              top: 428,
              start: 26,
              child: Container(
                width: 309,
                height: 62,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color(0xffd9d9d9),
                ),
              ),
            ),
            PositionedDirectional(
              top: 450,
              start: 40,
              child: Text(
                "784958625dds4554s5781s5884",
                style: GoogleFonts.varela(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
