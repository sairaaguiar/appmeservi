// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Formulario on _Formulario, Store {
  Computed<bool>? _$validarEmailComputed;

  @override
  bool get validarEmail =>
      (_$validarEmailComputed ??= Computed<bool>(() => super.validarEmail,
              name: '_Formulario.validarEmail'))
          .value;
  Computed<bool>? _$validarCPFCNPJComputed;

  @override
  bool get validarCPFCNPJ =>
      (_$validarCPFCNPJComputed ??= Computed<bool>(() => super.validarCPFCNPJ,
              name: '_Formulario.validarCPFCNPJ'))
          .value;
  Computed<bool>? _$isformValidComputed;

  @override
  bool get isformValid =>
      (_$isformValidComputed ??= Computed<bool>(() => super.isformValid,
              name: '_Formulario.isformValid'))
          .value;

  late final _$nomeAtom = Atom(name: '_Formulario.nome', context: context);

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$emailAtom = Atom(name: '_Formulario.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$cpfcnpjAtom =
      Atom(name: '_Formulario.cpfcnpj', context: context);

  @override
  String get cpfcnpj {
    _$cpfcnpjAtom.reportRead();
    return super.cpfcnpj;
  }

  @override
  set cpfcnpj(String value) {
    _$cpfcnpjAtom.reportWrite(value, super.cpfcnpj, () {
      super.cpfcnpj = value;
    });
  }

  late final _$senhaAtom = Atom(name: '_Formulario.senha', context: context);

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  late final _$senhacopiaAtom =
      Atom(name: '_Formulario.senhacopia', context: context);

  @override
  String get senhacopia {
    _$senhacopiaAtom.reportRead();
    return super.senhacopia;
  }

  @override
  set senhacopia(String value) {
    _$senhacopiaAtom.reportWrite(value, super.senhacopia, () {
      super.senhacopia = value;
    });
  }

  late final _$checkAtom = Atom(name: '_Formulario.check', context: context);

  @override
  bool get check {
    _$checkAtom.reportRead();
    return super.check;
  }

  @override
  set check(bool value) {
    _$checkAtom.reportWrite(value, super.check, () {
      super.check = value;
    });
  }

  late final _$_FormularioActionController =
      ActionController(name: '_Formulario', context: context);

  @override
  MaskTextInputFormatter maskTelefone() {
    final _$actionInfo = _$_FormularioActionController.startAction(
        name: '_Formulario.maskTelefone');
    try {
      return super.maskTelefone();
    } finally {
      _$_FormularioActionController.endAction(_$actionInfo);
    }
  }

  @override
  MaskTextInputFormatter maskCPF() {
    final _$actionInfo =
        _$_FormularioActionController.startAction(name: '_Formulario.maskCPF');
    try {
      return super.maskCPF();
    } finally {
      _$_FormularioActionController.endAction(_$actionInfo);
    }
  }

  @override
  MaskTextInputFormatter maskCNPJ() {
    final _$actionInfo =
        _$_FormularioActionController.startAction(name: '_Formulario.maskCNPJ');
    try {
      return super.maskCNPJ();
    } finally {
      _$_FormularioActionController.endAction(_$actionInfo);
    }
  }

  @override
  void checkBOX(bool valor) {
    final _$actionInfo =
        _$_FormularioActionController.startAction(name: '_Formulario.checkBOX');
    try {
      return super.checkBOX(valor);
    } finally {
      _$_FormularioActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNome(String value) {
    final _$actionInfo =
        _$_FormularioActionController.startAction(name: '_Formulario.setNome');
    try {
      return super.setNome(value);
    } finally {
      _$_FormularioActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo =
        _$_FormularioActionController.startAction(name: '_Formulario.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_FormularioActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCPFCNPJ(String value) {
    final _$actionInfo = _$_FormularioActionController.startAction(
        name: '_Formulario.setCPFCNPJ');
    try {
      return super.setCPFCNPJ(value);
    } finally {
      _$_FormularioActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String value) {
    final _$actionInfo =
        _$_FormularioActionController.startAction(name: '_Formulario.setSenha');
    try {
      return super.setSenha(value);
    } finally {
      _$_FormularioActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenhaCopia(String value) {
    final _$actionInfo = _$_FormularioActionController.startAction(
        name: '_Formulario.setSenhaCopia');
    try {
      return super.setSenhaCopia(value);
    } finally {
      _$_FormularioActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
email: ${email},
cpfcnpj: ${cpfcnpj},
senha: ${senha},
senhacopia: ${senhacopia},
check: ${check},
validarEmail: ${validarEmail},
validarCPFCNPJ: ${validarCPFCNPJ},
isformValid: ${isformValid}
    ''';
  }
}
