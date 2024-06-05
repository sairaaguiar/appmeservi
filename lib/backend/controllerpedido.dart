import 'package:get/get.dart';

class PedidoController extends GetxController {
  static PedidoController get to => Get.find();

  String rua = "";
  int numero = 0;
  String bairro = "";
  String cidade = "";
  String estado = "";
  String data = "";
  String hora = "";
  String descricao = "";


  void setRua(value){
    rua = value;
    update();
  }

  void setNumero(value){
    numero = value;
    update();
  }

  void setBairro(value){
    bairro = value;
    update();
  }

  void setCidade(value){
    cidade = value;
    update();
  }

  void setEstado(value){
    estado = value;
    update();
  }

  void setData(value){
    data = value;
    update();
  }

  void setHora(value){
    hora = value;
    update();
  }

  void setDescricao(value){
    descricao = value;
    update();
  }
}