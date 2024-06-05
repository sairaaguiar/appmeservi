import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:get/get.dart';

class Mecoins extends StatefulWidget {

  @override
  State<Mecoins> createState() => _MecoinsState();
}
class _MecoinsState extends State<Mecoins> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MeCoins"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    "Olá Vanessa!",
                    style: GoogleFonts.vesperLibre(
                      color: Color(0xfff66b0e),
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "300 MeCoins",
                        style: GoogleFonts.vesperLibre(
                          color: Color(0xfff66b0e),
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "A cada pedido concluído você recebe 2 MeCoins",
              style: GoogleFonts.vesperLibre(fontSize: 16.0),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const BonusPage(
                            title: "Super Serviços",
                            description:
                            "Garanta o melhor plano para conseguir mais serviços",
                            benefits:
                            "Ao comprar super serviços você fica 20 dias na lista dos principais profissionais do MeServi. Com esse plano a cada serviço feito você ganha um bônus de 5 MeCoins.",
                            price: "500 MeCoins por 65,90 reais",
                          ),
                        ),
                      );
                    },
                    child: _buildPackage(
                      context,
                      "Super Serviços",
                      "500 MeCoins por 65,90 reais",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const BonusPage(
                            title: "ServiTop",
                            description:
                            "Garanta um plano top para serviços top",
                            benefits:
                            "Ao comprar super serviços você fica 10 dias na lista dos principais profissionais do MeServi. Com esse plano a cada serviço feito você ganha um bônus de 5 MeCoins.",
                            price: "300 MeCoins por 38,90 reais",
                          ),
                        ),
                      );
                    },
                    child: _buildPackage(
                      context,
                      "ServiTop",
                      "300 MeCoins por 38,90 reais",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const BonusPage(
                            title: "MeBônus",
                            description:
                            "Garanta aquele bônus que você precisa para turbinar seu negócio",
                            benefits:
                            "Ao comprar super serviços você fica 5 dias na lista dos principais profissionais do MeServi. Com esse plano a cada serviço feito você ganha um bônus de 5 MeCoins.",
                            price: "100 MeCoins por 16,90 reais",
                          ),
                        ),
                      );
                    },
                    child: _buildPackage(
                      context,
                      "MeBônus",
                      "100 MeCoins por 16,90 reais",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPackage(BuildContext context, String title, String price) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(
          title,
          style: GoogleFonts.vesperLibre(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(price),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xfff66b0e),
        textTheme: GoogleFonts.vesperLibreTextTheme(),
      ),
    );
  }

class BonusPage extends StatelessWidget {
  final String title;
  final String description;
  final String benefits;
  final String price;

  const BonusPage({
    required this.title,
    required this.description,
    required this.benefits,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              description,
              style: GoogleFonts.vesperLibre(
                color: Color(0xff4f4f4f),
                fontWeight: FontWeight.w700,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Benefícios",
              style: GoogleFonts.vesperLibre(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              benefits,
              style: GoogleFonts.vesperLibre(fontSize: 16.0),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Código',
                hintStyle: GoogleFonts.varela(
                  color: Color(0xffd9d9d9),
                  fontSize: 15.0,
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              price,
              style: GoogleFonts.vesperLibre(fontSize: 16.0),
              selectionColor: Color(0xffd9d9d9),
            ),
            const SizedBox(height: 20),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Feito!"),
               style: ElevatedButton.styleFrom(
                 backgroundColor: Color(0xfff66b0e),

            ),
             ),
             ],
        ),
      ),
    );
  }
}
