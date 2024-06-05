import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:meserviaplicacao/backend/navigation_controller.dart';
import 'package:meserviaplicacao/pages/pages_profissional/category_selection.dart';
import 'package:get/get.dart';
import 'package:meserviaplicacao/pages/pages_profissional/profilepage.dart';
import 'package:meserviaplicacao/pages/pages_profissional/propostas.dart';
import 'Mecoins.dart';
import 'Agenda.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> tabs = const [
    Icon(Bootstrap.house_door),
    Icon(Bootstrap.calendar),
    Icon(Bootstrap.briefcase),
    Icon(Bootstrap.person),
  ];

  final navcontroller = Get.put(NavController());

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Color(0xfff66b0e)),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Mecoins(),
                      ),
                    );
                  },
                  child: Row(
                    // Alteração aqui
                    children: [
                      // Alteração aqui
                      Icon(Icons.monetization_on,
                          color: Color(0xfff66b0e)), // Alteração aqui
                      SizedBox(width: 5), // Alteração aqui
                      Text(
                        // Alteração aqui
                        "300 MeCoins",
                        style: GoogleFonts.vesperLibre(
                          color: Color(0xff525252),
                          fontWeight: FontWeight.w700,
                          fontSize: 10.0,
                        ),
                      ),
                    ], // Alteração aqui
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        width: 250,
        backgroundColor: const Color(0xFF4F4F4F),
        child: ListView(
          padding: const EdgeInsets.only(left: 10.0),
          children: [
            const SizedBox(height: 30.0),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
                radius: 27.0,
              ),
              subtitle: Text(
                'usuario',
                style: GoogleFonts.getFont("Vesper Libre",
                    color: Colors.white, fontSize: 18.0),
              ),
            ),
            const Divider(color: Colors.white70),
            ListTile(
              leading: const Icon(
                Bootstrap.gear,
                color: Colors.white,
              ),
              title: Text("Configurações",
                  style:
                      GoogleFonts.getFont("Vesper Libre", color: Colors.white)),
              onTap: () {
                Get.offAllNamed("/config");
              },
            ),
            ListTile(
              leading: const Icon(Bootstrap.shield_check, color: Colors.white),
              title: Text("Segurança",
                  style:
                      GoogleFonts.getFont("Vesper Libre", color: Colors.white)),
              onTap: () {
                Get.offAndToNamed('/seguranca');
              },
            ),
            ListTile(
              onTap: () {
                Get.offAllNamed('/faleconosco');
              },
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
                await CategorySelectionScreen();
              },
            )
          ],
        ),
      ),
      body: PageView(
        controller: navcontroller.pageController,
        onPageChanged: navcontroller.onPageChanged,
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Pesquise pedidos',
                          hintStyle: GoogleFonts.varela(
                            color:  Color(0xffd9d9d9),
                            fontSize: 15.0,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 10.0),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xfff66b0e),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color(0xfff66b0e),
                          width: 2.0,
                        ),
                      ),
                      child: Icon(Icons.search, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Pedidos Disponíveis",
                  style: GoogleFonts.vesperLibre(
                    color: Color(0xff4f4f4f),
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                  ),
                ),

                // Adicione aqui a lista de pedidos disponíveis
                
              ],
            ),
          ),
          Agendapage(),
          Propostaspedi(),
          Profiles(),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: const Color.fromRGBO(246, 107, 14, 1),
        ),
        child: GetBuilder<NavController>(
          builder: (navcontroller) => BottomNavigationBar(
            backgroundColor: const Color.fromRGBO(246, 107, 14, 1),
            currentIndex: navcontroller.selectedValue,
            onTap: (value) {
              navcontroller.setSelectedValue(value);
            },
            items: [
              BottomNavigationBarItem(
                label: "Início",
                icon: Icon(Bootstrap.house_door),
              ),
              BottomNavigationBarItem(
                label: "Agenda",
                icon: Icon(Bootstrap.calendar),
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
      ),
    );
  }
}
