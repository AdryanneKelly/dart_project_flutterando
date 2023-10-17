import 'package:dart_project/models/persons/person_model.dart';

import '../cards/card_model.dart';

abstract class AccountModel {
  final double balance;
  final String accountNumber;
  final String agencyNumber;
  // TODO(danifbn): Definir o tipo da transação
  final List transactionHistory;
  final CardModel card;
  final PersonModel person;
  final AccountType accountType;

  AccountModel({
    required this.balance,
    required this.accountNumber,
    required this.agencyNumber,
    required this.transactionHistory,
    required this.card,
    required this.accountType,
    required this.person,
  });
}

enum AccountType { current, saving, salary, investment }
