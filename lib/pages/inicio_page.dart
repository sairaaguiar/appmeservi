import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:meserviaplicacao/backend/banco_de_dados.dart';
import 'package:meserviaplicacao/pages/mapa.dart';
import 'package:meserviaplicacao/widgets/widgets.dart';


class TelaInicio extends StatefulWidget {

  final bdController = Get.put(BDController());

  TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {

  final usuario = Get.arguments;
  
  // Parte da naviagtionbar
  int _currentIndex = 0;
  List<Widget> tabs = const [
    Icon(Bootstrap.house_door),
    Icon(Bootstrap.person_plus),
    Icon(Bootstrap.briefcase),
    Icon(Bootstrap.person),
  ];

  @override
  Widget build(BuildContext context) {
    final tela = MediaQuery.of(context).size;
    final List<Container> imageList = [
      Container(
        height: 50,
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(246, 107, 14, 1),
          borderRadius: BorderRadius.circular(10.0),
          image: const DecorationImage(
            image: AssetImage('assets/images/limpeza.png'),
          ),
        ),
      ),
      Container(
        height: 50,
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(246, 107, 14, 1),
          borderRadius: BorderRadius.circular(10.0),
          image: const DecorationImage(
            image: AssetImage('assets/images/construcao.png'),
          ),
        ),
      ),
      Container(
        height: 50,
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(246, 107, 14, 1),
          borderRadius: BorderRadius.circular(10.0),
          image: const DecorationImage(
            image: AssetImage('assets/images/manutencao.png'),
          ),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Bootstrap.bell),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.0, left: 8.0),
            child: Icon(Bootstrap.send),
          )
        ],
        foregroundColor: const Color.fromRGBO(246, 107, 14, 1),
      ),
      drawer: Drawer(
        width: 250,
        backgroundColor: const Color.fromRGBO(46, 56, 71, 1.0),
        child: ListView(
          padding: const EdgeInsets.only(left: 10.0),
          children: [
            const SizedBox(height: 30.0),
            ListTile(leading: CircleAvatar(child: Icon(Icons.person), radius: 27.0,),
              subtitle: Text(usuario, style: GoogleFonts.getFont("Vesper Libre", color: Colors.white, fontSize: 18.0),),),
            const Divider(color: Colors.white70),
            ListTile(
              leading: const Icon(
                Bootstrap.gear,
                color: Colors.white,
              ),
              title: Text("Configurações",
                  style:
                      GoogleFonts.getFont("Vesper Libre", color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Bootstrap.shield_check, color: Colors.white),
              title: Text("Segurança",
                  style:
                      GoogleFonts.getFont("Vesper Libre", color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Bootstrap.chat_square,
                color: Colors.white,
              ),
              title: Text("Fale conosco",
                  style:
                      GoogleFonts.getFont("Vesper Libre", color: Colors.white)),
            ),
            ListTile(
              leading: const Icon(
                Bootstrap.box_arrow_in_left,
                color: Colors.white,
              ),
              title: Text("Sair",
                  style:
                      GoogleFonts.getFont("Vesper Libre", color: Colors.white)),
              onTap: () async {
                await bdController.logoutUser(context);
              },
            )
          ],
        ),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15,
                            offset: Offset(2, 3),
                          )
                        ]),
                    height: 50,
                    width: tela.width < 400 ? 260 : 265,
                    child: FormBuilderTextField(
                      textAlign: TextAlign.center,
                      name: "pesquisa",
                      decoration: const InputDecoration(
                        hintText: "Pesquise o serviço desejado",
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 147, 140, 140)),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(246, 107, 14, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: const IconButton(
                      icon: Icon(
                        Bootstrap.search,
                        color: Colors.white,
                      ),
                      onPressed: null,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Categorias",
                    style: GoogleFonts.getFont(
                      'Vesper Libre',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            GFCarousel(
              initialPage: 0,
              height: 90,
              items: imageList.map(
                (item) {
                  return Container(
                    height: 80,
                    margin: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5.0)),
                        child: item),
                  );
                },
              ).toList(),
              onPageChanged: (index) {
                setState(() {
                  index;
                });
              },
              viewportFraction: 0.3,
            ),
            SizedBox(
              height: tela.width < 400 ? 350 : 360,
              width: tela.width < 400 ? 340 : 345,
              child: Mapa(),
            )
          ],
        ),
      ),
      // Barra de navegação
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: const Color.fromRGBO(246, 107, 14, 1),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(246, 107, 14, 1),
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(
              label: "Início",
              icon: Icon(Bootstrap.house_door),
            ),
            BottomNavigationBarItem(
              label: "Seguindo",
              icon: Icon(Bootstrap.person_plus),
            ),
            BottomNavigationBarItem(
              label: "Pedidos",
              icon: Icon(Bootstrap.briefcase),
            ),
            BottomNavigationBarItem(
              label: "Perfil",
              icon: Icon(Bootstrap.person),
            ),
          ],
        ),
      ),
    );
  }
}
