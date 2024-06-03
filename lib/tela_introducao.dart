import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:get/get.dart';



class OnboardingScreen extends StatelessWidget {

  OnboardingScreen({super.key});
  final List<PageViewModel> pages = [
    PageViewModel(
      title: "",
      bodyWidget: Column(
        children: [
          Text(
            "Descubra Serviços",
            style: GoogleFonts.getFont('Vesper Libre', fontSize: 28.0),
          ),
          const SizedBox(height: 20.0),
          Center(child: Image.asset('assets/images/image.png', height: 250.0)),
          const SizedBox(height: 20.0),
          const Text(
            "Contrate serviços com\nfacilidade, ao alcance dos seus\ndedos",
            style: TextStyle(fontSize: 16.0),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      decoration: const PageDecoration(
        imagePadding: EdgeInsets.all(16.0),
      ),
    ),
    PageViewModel(
      title: "",
      bodyWidget: Column(
        children: [
          Text(
            "Compartilhe a experiência",
            style: GoogleFonts.getFont('Vesper Libre', fontSize: 28.0),
          ),
          const SizedBox(height: 20.0),
          Center(child: Image.asset('assets/images/imagee.png', height: 250.0)),
          const SizedBox(height: 20.0),
          const Text(
            "Compartilhe a experiência:\nDivulgue o profissional que você\nconfia!",
            style: TextStyle(fontSize: 16.0),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      decoration: const PageDecoration(
        imagePadding: EdgeInsets.all(16.0),
      ),
    )
  ];

  

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: pages,
      onDone: () {
        // Navegar para a próxima tela
        Get.toNamed("/home");
      },
      onSkip: () {
        // Navegar para a próxima tela
        Get.toNamed("/home");
      },
      showSkipButton: true,
      skip: Text("Pular",
          style: GoogleFonts.getFont('Vesper Libre',
              fontSize: 19.0, color: const Color.fromARGB(255, 147, 140, 140))),
      next: const Icon(
        Icons.arrow_forward,
        color: Color.fromRGBO(246, 107, 14, 1),
      ),
      done: Text("Começar",
          style: GoogleFonts.getFont('Vesper Libre',
              fontSize: 18.0, color: const Color.fromRGBO(246, 107, 14, 1))),
      dotsDecorator: DotsDecorator(
        activeColor: const Color.fromRGBO(151, 151, 151, 1),
        color: const Color.fromRGBO(246, 107, 14, 1),
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
