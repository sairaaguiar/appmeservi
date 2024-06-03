import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:meserviaplicacao/backend/banco_de_dados.dart';
import 'package:quickalert/quickalert.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


final bdcontroller = Get.put(BDController());
class Localizacao extends GetxController {
  double lat = 0.0;
  double long = 0.0;
  String erro = '';
  GoogleMapController? mapController;
  Marker? localizacaoAtualMarker;

  Localizacao() {
    getPosicao();
  }

  Future<void> getPosicao() async {
    try {
      bool ativado = await Geolocator.isLocationServiceEnabled();
      if (!ativado) {
        await _mostrarDialogoAtivarGps();
        ativado = await Geolocator.isLocationServiceEnabled();
        if (!ativado) {
          return Future.error('Por favor, habilite a localização do seu smartphone');
        }
      }

      LocationPermission permissao = await Geolocator.checkPermission();
      if (permissao == LocationPermission.denied) {
        permissao = await Geolocator.requestPermission();
        if (permissao == LocationPermission.denied) {
          return Future.error('Você precisa habilitar sua localização');
        }
      }

      if (permissao == LocationPermission.deniedForever) {
        return Future.error('Você precisa habilitar sua localização nas configurações do dispositivo');
      }

      Position posicao = await Geolocator.getCurrentPosition();
      lat = posicao.latitude;
      long = posicao.longitude;

      // Atualiza a câmera do mapa para a nova localização
      if (mapController != null) {
        mapController!.animateCamera(
          CameraUpdate.newLatLng(
            LatLng(lat, long),
          ),
        );
      }

      // Cria um marcador para a localização atual
      localizacaoAtualMarker = Marker(
        markerId: MarkerId('localizacao_atual'),
        position: LatLng(lat, long),
        infoWindow: InfoWindow(title: 'Minha Localização'),
      );

      // Salva a localização no Back4App usando o BDController
      await bdcontroller.salvarLocalizacao(lat, long);

    } catch (e) {
      erro = e.toString();
      QuickAlert.show(
        context: Get.context!,
        type: QuickAlertType.error,
        title: 'Erro',
        text: erro,
      );
    }

    update();
  }

  Future<void> _mostrarDialogoAtivarGps() async {
    await QuickAlert.show(
      context: Get.context!,
      type: QuickAlertType.warning,
      title: 'GPS Desativado',
      text: 'Por favor, ative o GPS do seu dispositivo.',
      confirmBtnText: 'OK',
    );
  }
}