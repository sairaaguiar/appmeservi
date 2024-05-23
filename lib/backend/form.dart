import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mobx/mobx.dart';

part 'form.g.dart';

class Formulario = _Formulario with _$Formulario;

abstract class _Formulario with Store {

  @observable
  String nome = "";

  @observable
  String email = "";

  @observable
  String cpfcnpj = "";

  @observable
  String senha = "";

  @observable
  String senhacopia = "";

  @observable
  bool check = false;


  @action
  MaskTextInputFormatter maskTelefone() {
    final mask = MaskTextInputFormatter(mask: "(##) # ####-####");
    return mask;
  }

  @action
  MaskTextInputFormatter maskCPF() {
    final mask = MaskTextInputFormatter(mask: "###.###.###-##");
    return mask;
  }

  @action 
  MaskTextInputFormatter maskCNPJ() {
    final mask = MaskTextInputFormatter(mask: "##.###.###/0001-##");
    return mask;

  }


  @action 
  void checkBOX(bool valor) {
    check = valor;
  }

  @action
  void setNome(String value) {
    nome = value;
  }

  @action
  void setEmail(String value) {
    email = value;
  }

  @action
  void setCPFCNPJ(String value) {
    cpfcnpj = value;
  }

  @action
  void setSenha(String value) {
    senha = value;
  }

  @action
  void setSenhaCopia(String value) {
    senhacopia = value;
  }


  @computed
  bool get validarEmail => RegExp(r"^([\w\.-_]+)(@+)([\w]+)((\.+\w{2,3}){1,2})$").hasMatch(email);


  @computed
  bool get validarCPFCNPJ => RegExp(r"^([\d.\/]+)-([\d]{2})$").hasMatch(cpfcnpj);
  

  @computed 
  bool get isformValid => validarEmail && validarCPFCNPJ;

  


}