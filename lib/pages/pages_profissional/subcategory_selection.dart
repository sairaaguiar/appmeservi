import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubcategorySelection extends StatelessWidget {
  final String category;

  SubcategorySelection({required this.category});

  @override
  Widget build(BuildContext context) {
    List<String> subcategories = _getSubcategories(category);

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
          'Categorias de Profissões',
          style: GoogleFonts.vesperLibre(
            color: Color.fromRGBO(246, 107, 14, 1),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Escolha a Categoria dos serviços que você realiza',
              style: GoogleFonts.vesperLibre(
                color: Color(0xff525252),
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: subcategories
                    .map((subcategory) => CheckboxListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  title: Text(subcategory),
                  value: false,
                  onChanged: (bool? value) {
                    // Ação ao mudar o estado do checkbox
                  },
                  controlAffinity: ListTileControlAffinity.trailing,
                ))
                    .toList(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/personalInfo');
                },

              child: Text(
                  'Continuar',
                  style: GoogleFonts.vesperLibre(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(246, 107, 14, 1), // Cor de fundo
                foregroundColor: Colors.white, // Cor do texto
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5), // Border radius
                ),
                padding: EdgeInsets.symmetric(horizontal: 52, vertical: 22), // Padding
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> _getSubcategories(String category) {
    if (category == 'Reformas e Reparos') {
      return [
        'Pedreiro',
        'Eletricista',
        'Encanador(a)',
        'Decorador(a)',
        'Pintor(a)',
        'Marceneiro(a)',
      ];
    } else if (category == 'Serviços Domésticos') {
      return [
        'Faxineiro(a)',
        'Cozinheiro(a)',
        'Jardineiro(a)',
        'Passadeira',
        'Cuidador(a)',
      ];
    }
    return [];
  }
}
