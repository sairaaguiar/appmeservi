import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfigScreen extends StatelessWidget {  // Renamed for clarity
  const ConfigScreen({super.key}); // Simplified constructor syntax

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  // Added AppBar for a more standard navigation look
        title: const Text("Configurações"),
        leading: IconButton(  // Added back button functionality
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.offAllNamed('/inicioprof'),
        ),
      ),
      body: ListView( // Use ListView for better scrolling behavior
        padding: const EdgeInsets.all(20), // Add padding for visual spacing
        children: [
          const Text(
            "Informações pessoais",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10), // Add space between sections

          // ... (Add widgets for personal info here)

          const SizedBox(height: 20), 
          const Text(
            "Privacidade e Segurança",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          // ... (Add widgets for privacy & security here)
        ],
      ),
    );
  }
}
