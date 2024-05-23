// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banco_de_dados.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BancoDados on _BancoDados, Store {
  late final _$isConnectedAtom =
      Atom(name: '_BancoDados.isConnected', context: context);

  @override
  bool get isConnected {
    _$isConnectedAtom.reportRead();
    return super.isConnected;
  }

  @override
  set isConnected(bool value) {
    _$isConnectedAtom.reportWrite(value, super.isConnected, () {
      super.isConnected = value;
    });
  }

  late final _$connectBDAsyncAction =
      AsyncAction('_BancoDados.connectBD', context: context);

  @override
  Future<void> connectBD() {
    return _$connectBDAsyncAction.run(() => super.connectBD());
  }

  late final _$lerDadosAsyncAction =
      AsyncAction('_BancoDados.lerDados', context: context);

  @override
  Future<List<ParseObject>> lerDados(String className) {
    return _$lerDadosAsyncAction.run(() => super.lerDados(className));
  }

  late final _$criarUserAsyncAction =
      AsyncAction('_BancoDados.criarUser', context: context);

  @override
  Future<void> criarUser(
      BuildContext context, String nome, String senha, String email) {
    return _$criarUserAsyncAction
        .run(() => super.criarUser(context, nome, senha, email));
  }

  late final _$loginUserAsyncAction =
      AsyncAction('_BancoDados.loginUser', context: context);

  @override
  Future<void> loginUser(BuildContext context, String nome, String senha) {
    return _$loginUserAsyncAction
        .run(() => super.loginUser(context, nome, senha));
  }

  late final _$logoutUserAsyncAction =
      AsyncAction('_BancoDados.logoutUser', context: context);

  @override
  Future<void> logoutUser(BuildContext context) {
    return _$logoutUserAsyncAction.run(() => super.logoutUser(context));
  }

  @override
  String toString() {
    return '''
isConnected: ${isConnected}
    ''';
  }
}
