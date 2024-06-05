import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalStepScreen extends StatelessWidget {
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
          'Última etapa',
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
              "Última etapa!",
              style: GoogleFonts.vesperLibre(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Quando finalizar você vai ter a oportunidade de ter clientes todos os dias",
              style: GoogleFonts.varela(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontSize: 12.0,
              ),
            ),
            SizedBox(height: 20),
            _buildInputField(context, "CPF ou CNPJ"),
            SizedBox(height: 20),
            Text(
              "Ao concordar, você aceita os Termos de Uso e a nossa Política de Privacidade, que são obrigatórios para continuar utilizando nossos serviços.",
              style: GoogleFonts.varela(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w400,
                fontSize: 10.0,
              ),
            ),
            SizedBox(height: 20),
            _buildCheckboxField(),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profilepage');
                  // Ação ao pressionar o botão Finalizar Cadastro
                },
                child: Text(
                    'Finalizar Cadastro',
                  style: GoogleFonts.vesperLibre(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xfff66b0e),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 22),
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

  Widget _buildCheckboxField() {
    return Row(
      children: [
        Container(
          width: 22,
          height: 22,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            border: Border.all(
              color: Color(0xfff66b0e),
              width: 1,
            ),
          ),
          child: Checkbox(
            value: false,
            onChanged: (bool? value) {
              // Ação ao mudar o estado do checkbox
            },
            activeColor: Color(0xfff66b0e),
            checkColor: Colors.white,
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Text(
            "Ao concordar, você aceita os Termos de Uso e a nossa Política de Privacidade.",
            style: GoogleFonts.varela(
              color: Color(0xff4f4f4f),
              fontWeight: FontWeight.w400,
              fontSize: 10.0,
            ),
          ),
        ),
      ],
    );
  }
}
