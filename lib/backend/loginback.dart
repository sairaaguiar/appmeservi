import 'package:get/get.dart';
import 'package:meserviaplicacao/backend/banco_de_dados.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:quickalert/quickalert.dart';
import 'package:meserviaplicacao/models/parse_errors.dart';

class LoginForm extends GetxController {
  static LoginForm get to => Get.find();

  final bancoLogin = Get.put(BDController());

  String nome = "";
  String email = "";
  String senha = "";
  bool senhavisivel = false;
  bool login = false;


  //Setando os valores para as váriaveis nome, email e senha.
  void setNome(String value) {
    nome = value;
    update();
  }

  void setEmail(String value) {
    email = value;
    update();
  }

  void setSenha(String value) {
    senha = value;
    update();
  }

  void mostrarSenha() {
    senhavisivel = !senhavisivel;
    update();

  }

  Future<void> loginUser(context, String nome, String senha) async {
  if (!bancoLogin.isConnected) {
    await bancoLogin.connectBD();
  }

  final ParseUser user = ParseUser(nome, senha, null);


  var resposta = await user.login();
  if (resposta.success) {
  Get.offAllNamed('/inicio', arguments: nome);
  } else {
    QuickAlert.show(
        context: Get.context!,
        type: QuickAlertType.error,
        text: ParseErrors.getDescription(resposta.error!.code),
      );
  }
  
}
  

  // Validações para fazer login
  bool get validarNome => RegExp(r"^([\w\.-_]+)(@+)([\w]+)((\.+\w{2,3}){1,2})$").hasMatch(nome);
  bool get validarSenha => senha.isNotEmpty;
  bool get validarEmail => RegExp(r"^([\w\.-_]+)(@+)([\w]+)((\.+\w{2,3}){1,2})$").hasMatch(email);
  bool get validarLogin => validarNome && validarSenha;
}


