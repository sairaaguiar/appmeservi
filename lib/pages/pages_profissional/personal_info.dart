import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromRGBO(246, 107, 14, 1)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Informações pessoais',
          style: GoogleFonts.vesperLibre(
            color: Color.fromRGBO(246, 107, 14, 1),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Informações pessoais",
              style: GoogleFonts.vesperLibre(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Para verificarmos o celular, enviaremos um código por SMS para o número informado",
              style: GoogleFonts.varela(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontSize: 12.0,
              ),
            ),
            SizedBox(height: 20),
            _buildInputField(context, "Nome"),
            SizedBox(height: 20),
            _buildInputField(context, "CEP"),
            Text(
              "Não lembra do seu CEP?",
              style: GoogleFonts.vesperLibre(
                color: Color(0xfff66b0e),
                fontWeight: FontWeight.w700,
                fontSize: 12.0,
              ),
            ),
            SizedBox(height: 20),
            _buildInputField(context, "Celular"),
            SizedBox(height: 20),
            _buildInputField(context, "Data de nascimento"),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/finalStep');
                  // Ação ao pressionar o botão Continuar
                },
                child: Text(
                    'Continuar',
                  style: GoogleFonts.vesperLibre(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xfff66b0e),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(BuildContext context, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.vesperLibre(
            color: Color(0xff4f4f4f),
            fontWeight: FontWeight.w700,
            fontSize: 18.0,
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Color(0xfff66b0e),
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Insira seu $label',
                style: GoogleFonts.varela(
                  color: Color(0xff4f4f4f),
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
