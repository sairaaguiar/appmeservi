import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Localizacao extends ChangeNotifier {
  double lat = 0.0;
  double long = 0.0;
  String erro = '';

  getPosicao() async {
    try {

      Position posicao = await _posicaoAtual();
      lat = posicao.latitude;
      long = posicao.longitude;

    } catch (e) {

      erro = e.toString();

    }

    notifyListeners();
  }

  Future <Position>  _posicaoAtual() async {
    LocationPermission permissao;
    bool ativado = await Geolocator.isLocationServiceEnabled();

    if(!ativado) {

      return Future.error('Por favor, habilite a localização do seu smartphone');
    
    }

    permissao = await Geolocator.checkPermission();

    if(permissao == LocationPermission.denied) {

      permissao = await Geolocator.requestPermission();

      if (permissao == LocationPermission.denied) {

        return Future.error('Você precisa habilitar sua localização');

      }

    }

    if (permissao == LocationPermission.deniedForever) {

      return Future.error('Você precisa habilitar sua localização');

    }

    return await Geolocator.getCurrentPosition();

  }
}