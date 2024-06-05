import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:get/get.dart';

class MeusPedidosApp extends StatefulWidget {
  @override
  State<MeusPedidosApp> createState() => _MeusPedidosAppState();
}

class _MeusPedidosAppState extends State<MeusPedidosApp> {

  List<Widget> tabs = const [
    Icon(Bootstrap.house_door),
    Icon(Bootstrap.calendar),
    Icon(Bootstrap.briefcase),
    Icon(Bootstrap.person),
  ];

  void _navigateTo(String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus pedidos'),
        backgroundColor: Color(0xfff66b0e),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Limpeza Geral',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xfff66b0e),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      '17 de abril às 10h',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                      onPressed: () {
                        _showCancelDialog(context);
                      },
                      child: Text('Cancelar'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCancelDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Cancelar pedido', style: TextStyle(color: Colors.orange)),
          content: Text('Deseja realmente cancelar o serviço'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Não', style: TextStyle(color: Colors.orange)),
            ),
            TextButton(
              onPressed: () {
                // Ação para cancelar o pedido
                Navigator.of(context).pop();
              },
              child: Text('Sim', style: TextStyle(color: Colors.orange)),
            ),
          ],
        );
      },
    );
  }
}