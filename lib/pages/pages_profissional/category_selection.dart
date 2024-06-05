import 'package:flutter/material.dart';
import 'package:meserviaplicacao/pages/pages_profissional/subcategory_selection.dart';
import 'package:google_fonts/google_fonts.dart';

class CategorySelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromRGBO(246, 107, 14, 1)),
          onPressed: () {
            // Ação ao pressionar o botão de voltar
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
            SizedBox(height: 20),
            Text(
              "Escolha a Categoria dos serviços que você realiza",
              style: GoogleFonts.vesperLibre(
                color: Color(0xff525252),
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SubcategorySelection(
                      category: 'Reformas e Reparos',
                    ),
                  ),
                );
              },
              child: Container(
                width: 324,
                height: 102,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x40000000),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                    ),
                  ],
                  color: const Color(0xffffffff),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Reformas e Reparos",
                        style: GoogleFonts.vesperLibre(
                          color: const Color(0xfff66b0e),
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Icon(
                        Icons.arrow_forward,
                        color: const Color(0xfff66b0e),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SubcategorySelection(
                      category: 'Serviços Domésticos',
                    ),
                  ),
                );
              },
              child: Container(
                width: 324,
                height: 102,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x40000000),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                    ),
                  ],
                  color: const Color(0xffffffff),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Serviços Domésticos",
                        style: GoogleFonts.vesperLibre(
                          color: const Color(0xfff66b0e),
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Icon(
                        Icons.arrow_forward,
                        color: const Color(0xfff66b0e),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
