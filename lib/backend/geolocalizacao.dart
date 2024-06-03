import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:quickalert/quickalert.dart';

class LocalizacaoController extends GetxController {
  final _posicaoAtual = Rxn<Position>();
  final _carregando = true.obs;

  Position? get posicaoAtual => _posicaoAtual.value;
  bool get carregando => _carregando.value;

  @override
  void onInit() {
    super.onInit();
    _verificarPermissaoLocalizacao();
  }

  Future<void> _verificarPermissaoLocalizacao() async {
    bool servicoHabilitado;
    LocationPermission permissao;

    // Testar se os serviços de localização estão habilitados
    servicoHabilitado = await Geolocator.isLocationServiceEnabled();
    if (!servicoHabilitado) {
      QuickAlert.show(
        context: Get.context!,
        type: QuickAlertType.warning,
        text: 'Os serviços de localização estão desativados. Por favor, ative-os.',
      );
      return;
    }

    // Verificar a permissão de localização
    permissao = await Geolocator.checkPermission();
    if (permissao == LocationPermission.denied) {
      permissao = await Geolocator.requestPermission();
      if (permissao == LocationPermission.denied) {
        QuickAlert.show(
          context: Get.context!,
          type: QuickAlertType.error,
          text: 'A permissão de localização foi negada.',
        );
        return;
      }
    }

    if (permissao == LocationPermission.deniedForever) {
      QuickAlert.show(
        context: Get.context!,
        type: QuickAlertType.error,
        text: 'A permissão de localização foi negada permanentemente. Você precisa alterar as configurações do aplicativo.',
      );
      return;
    }

    // Se tudo estiver ok, obter a localização
    _obterLocalizacaoAtual();
  }

  Future<void> _obterLocalizacaoAtual() async {
    try {
      final posicao = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      _posicaoAtual.value = posicao;
    } catch (e) {
      QuickAlert.show(
        context: Get.context!,
        type: QuickAlertType.error,
        text: 'Erro ao obter a localização: $e',
      );
    } finally {
      _carregando.value = false;
    }
  }

  Future<void> atualizarLocalizacao() async {
    _carregando.value = true;
    await _obterLocalizacaoAtual();
  }
}
