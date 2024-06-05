import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DataPublicada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Limpeza Geral'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Digite o dia:',
                style: TextStyle(fontSize: 18.0, color: Color(0xfff66b0e)),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Digite a hora:',
                style: TextStyle(fontSize: 18.0, color: Color(0xfff66b0e)),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                HoraInputFormatter()],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Descrição do anúncio:',
                style: TextStyle(fontSize: 18.0, color: Color(0xfff66b0e)),
              ),
              SizedBox(height: 10.0),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 200), // Set a fixed height
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      // Implementar ação do botão voltar
                    },
                    child: Text(
                      'Voltar',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 167, 162, 158),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implementar ação do botão continuar
                    },
                    child: Text(
                      'Publicar',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xfff66b0e),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}