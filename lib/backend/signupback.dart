import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:get/get.dart';
import 'package:meserviaplicacao/backend/banco_de_dados.dart';
import 'package:meserviaplicacao/models/parse_errors.dart';
import 'package:meserviaplicacao/repositorios/chaves_tabelas.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:quickalert/quickalert.dart';

class FormularioController extends GetxController {
  static FormularioController get to => Get.find();

  final bancoSignUp = Get.put(BDController());

  String nome = "";
  String cpfcnpj = "";
  String email = "";
  String senha = "";
  String senhacopia = "";
  bool check = false;
  bool carregando = false;
  RxBool senhavisivel = false.obs;

  MaskTextInputFormatter maskTelefone() {
    return MaskTextInputFormatter(mask: "(##) # ####-####");
  }

  MaskTextInputFormatter maskCPF() {
    return MaskTextInputFormatter(mask: "###.###.###-##");
  }

  MaskTextInputFormatter maskCNPJ() {
    return MaskTextInputFormatter(mask: "##.###.###/0001-##");
  }

  void checkBOX(bool valor) {
    check = valor;
    update();
  }

  void setNome(String value) {
    nome = value;
    update();
  }

  void setEmail(String value) {
    email = value;
    update();
  }

  void setCPFCNPJ(String value) {
    cpfcnpj = value;
    update();
  }

  void setSenha(String value) {
    senha = value;
    update();
  }

  void setSenhaCopia(String value) {
    senhacopia = value;
    update();
  }

  void mostrarSenha() {
    senhavisivel.value = !senhavisivel.value;
    update();
  }

  Future<void> criarUser(context, String classe) async {
    if (!bancoSignUp.isConnected) {
      await bancoSignUp.connectBD();
    }

    final user = ParseUser.createUser(nome, senha, email);
    var resposta = await user.signUp();

    if (resposta.success) {
      final dados = classe == "CNPJ"
          ? ParseObject("Especialista")
          : ParseObject("Clientes");
      dados.set(chaveNome, nome);
      dados.set(chaveDocumento, cpfcnpj);
      dados.set(chaveEmail, email);
      dados.set('usuario', user.toPointer());
      dados.save();

      QuickAlert.show(
        title: "Tudo certo",
        onConfirmBtnTap: () =>
            Get.offAllNamed("/inicio", arguments: nome),
        confirmBtnText: "Ok",
        confirmBtnColor: const Color.fromRGBO(18, 175, 51, 1),
        context: Get.context!,
        type: QuickAlertType.success,
        text: "Parabéns sua conta foi criada com sucesso!",
      );
    } else {
      QuickAlert.show(
        context: Get.context!,
        type: QuickAlertType.error,
        text: ParseErrors.getDescription(resposta.error!.code),
      );
    }
  }

  bool get validarNome => nome.isNotEmpty;
  bool get validarSenha => senha == senhacopia;
  bool get validarCPFCNPJ =>
      RegExp(r"^([\d.\/]+)-([\d]{2})$").hasMatch(cpfcnpj);
  bool get validarEmail =>
      RegExp(r"^([\w\.-_]+)(@+)([\w]+)((\.+\w{2,3}){1,2})$").hasMatch(email);
  bool get validarLogin => validarNome || validarEmail && validarSenha;
  bool get isformValid => validarEmail && validarCPFCNPJ;
}
