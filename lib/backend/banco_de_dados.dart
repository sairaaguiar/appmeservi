import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:mobx/mobx.dart';
import 'package:quickalert/quickalert.dart';
import 'package:meserviaplicacao/key.dart';


part 'banco_de_dados.g.dart';

class BancoDados = _BancoDados with _$BancoDados;

abstract class _BancoDados with Store {

  @observable
  bool isConnected = false;


  _BancoDados() {
    connectBD();
  }

  @action
  // Conexão com o banco de dados.
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

    if (apiResponse.success) {

     isConnected = true;

    } else {

      isConnected = false;

    }
  }

  @action
  // Consultando o banco de dados.
  Future<List<ParseObject>> lerDados(String className) async {
   QueryBuilder<ParseObject> consulta = QueryBuilder<ParseObject>(ParseObject(className));
   final ParseResponse consultaResposta = await consulta.query();

   if(consultaResposta.success && consultaResposta.results != null) {

    return consultaResposta.results as List<ParseObject>;
    
   } else {

    return [];

   }
  }


  @action
  Future<void> criarUser(BuildContext context, String nome, String senha, String email) async {
   final user = ParseUser.createUser(nome, senha, email);
   var resposta = await user.signUp();

   if (resposta.success) {
  
    QuickAlert.show(
      title: "Tudo certo",
      onConfirmBtnTap: () => context.pushNamed("inicio"),
      confirmBtnText: "Ok",
      confirmBtnColor: const Color.fromRGBO(246, 107, 14, 1),
      context: context, type: QuickAlertType.success, text: "Parabéns sua conta foi criada com sucesso!");




   } else {
    

    QuickAlert.show(
      context: context, type: QuickAlertType.error, text: resposta.error!.message);

   }

  }


  @action
  Future<void> loginUser(BuildContext context, String nome, String senha) async {

    final user = ParseUser(nome, senha, null);
    var resposta = await user.login();

    if (resposta.success) {

      context.pushNamed('inicio');

    } else {

      QuickAlert.show(context: context, type: QuickAlertType.error, text: resposta.error!.message);
    }
  }


  @action
  Future<void> logoutUser(BuildContext context) async {
    final user = await ParseUser.currentUser() as ParseUser;

    var resposta = await user.logout();

    if (resposta.success) {

      context.pushNamed("login");

    } else {

      QuickAlert.show(
      context: context, type: QuickAlertType.error, text: resposta.error!.message);

   }
  }
}



