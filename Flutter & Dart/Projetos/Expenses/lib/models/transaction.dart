import 'package:flutter/foundation.dart';

// Classe para as transações
class Transaction {
  final String id;
  final String title;
  final double value;
  final DateTime date;

  // Construtor com os atributos nomeados e obrigatórios
  Transaction(
      {@required this.id,
      @required this.title,
      @required this.value,
      @required this.date});
}
