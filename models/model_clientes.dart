import 'enum_status.dart';

class Cliente {
  String? nome;
  String? cpf;
  String? telefone;
  int? capital_inicial;
  int? financiamento;
  StatusCliente? status;

  Cliente({required this.nome, required this.cpf, required this.telefone, required this.capital_inicial, required this.financiamento, required this.status});
}