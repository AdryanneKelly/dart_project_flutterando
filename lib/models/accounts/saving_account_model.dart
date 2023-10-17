import 'account_model.dart';

class SavingAccountModel extends AccountModel {
  SavingAccountModel({
    required super.balance,
    required super.accountNumber,
    required super.agencyNumber,
    required super.transactionHistory,
    required super.card,
    required super.person,
  }) : super(accountType: AccountType.saving);
}
