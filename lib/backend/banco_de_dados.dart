import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:quickalert/quickalert.dart';
import 'package:meserviaplicacao/keys.dart';

class BDController extends GetxController {
  static BDController get to => Get.find();
  bool isConnected = false;

  final isLoggedIn = false.obs;
  final isLoading = true.obs;

  Future<void> connectBD() async {
    String? aplicationId = aplicativoId;
    String? keyClient = chaveCliente;
    String? keyparseserverURL = chaveparseserverURL;

    await Parse().initialize(
      aplicationId,
      keyparseserverURL,
      clientKey: keyClient,
      debug: true,
      autoSendSessionId: true,
    );

    final apiResponse = await Parse().healthCheck();

    isConnected = apiResponse.success;
  }

    Future<void> logoutUser(BuildContext context) async {
    if (!isConnected) {
      await connectBD();
    }

    final user = await ParseUser.currentUser() as ParseUser;
    var resposta = await user.logout();

    if (resposta.success) {
      Get.offAllNamed("/login");
    } else {
      QuickAlert.show(
        context: Get.context!,
        type: QuickAlertType.error,
        text: resposta.error!.message,
      );
    }
  }

  // Consultando o banco de dados.
  Future<List<ParseObject>> lerDados(String className) async {
    QueryBuilder<ParseObject> consulta =
        QueryBuilder<ParseObject>(ParseObject(className));
    final ParseResponse consultaResposta = await consulta.query();

    if (consultaResposta.success && consultaResposta.results != null) {
      return consultaResposta.results as List<ParseObject>;
    } else {
      return [];
    }
  }

  Future<void> salvarDados({classe, nome, documento, email}) async {
    var dados = ParseObject(classe);
    dados.set("nome", nome);
    dados.set("documento", documento);
    dados.set("email", email);

    var resposta = await dados.save();

    if (resposta.success) {
      print("Dados salvo");
    } else {
      print(resposta.error!.message);
    }
  }


  Future<void> salvarLocalizacao(double lat, double long) async {
  final user = await ParseUser.currentUser() as ParseUser?;
  if (user == null) {
    return;
  }

  // 1. Verificar se já existe um endereço para o usuário
  final query = QueryBuilder<ParseObject>(ParseObject('Endereco'))
    ..whereEqualTo('usuario', user.toPointer());

  final existingAddress = await query.first();

  if (existingAddress == null) { // 2. Salvar somente se não existir
    final parseObject = ParseObject('Endereco')
      ..set('coordenadas', ParseGeoPoint(latitude: lat, longitude: long))
      ..set('usuario', user.toPointer());

    final response = await parseObject.save();

    if (response.success) {
      QuickAlert.show(
        context: Get.context!,
        type: QuickAlertType.success,
        title: 'Sucesso',
        text: 'Localização salva com sucesso',
      );
    } else {
      QuickAlert.show(
        context: Get.context!,
        type: QuickAlertType.error,
        title: 'Erro',
        text: 'Falha ao salvar a localização',
      );
    }
  }
}

}
