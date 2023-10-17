import 'dart:math';

import 'package:dart_project/models/accounts/account_model.dart';
import 'package:dart_project/models/accounts/current_account_model.dart';
import 'package:dart_project/models/cards/card_model.dart';
import 'package:dart_project/models/cards/debit_card_model.dart';
import 'package:dart_project/models/persons/person_model.dart';

class AccountTypesFunctions {
  static createAccountCurrent(PersonModel personModel) {
    AccountType type = AccountType.current;
    var debitCard = DebitCardModel(
        person: personModel,
        cardNumber: Random(100000).nextInt(42949611).toString(),
        cvv: '432',
        flag: CardFlag.visa,
        expirationDate: DateTime.parse("2034-10-23"));
    CurrentAccountModel(
        balance: 0.0,
        accountNumber: Random(100000).nextInt(429496).toString(),
        agencyNumber: Random(1000).nextInt(4294).toString(),
        transactionHistory: [],
        card: debitCard,
        person: personModel);
  }
}
