import 'package:dart_project/models/persons/legal_person_model.dart';
import 'package:dart_project/models/persons/physical_person_model.dart';
import 'package:dart_project/models/user_model.dart';
import 'package:dart_project/utils/console_read.dart';

class DartProject {
  static execute() {
    print("Bem vindo ao Flutter Bank");
    int id = 1;

    //cadastro de pessoa e usuário
    String email = ConsoleRead.readInfo("Digite seu email");
    String password = ConsoleRead.readInfo("Digite sua senha");
    String name = ConsoleRead.readInfo("Digite seu nome");
    String address = ConsoleRead.readInfo("Digite seu endereço");
    String telephone = ConsoleRead.readInfo("Digite seu número de telefone");
    DateTime createdAt = DateTime.now();

    String option = ConsoleRead.readInfo(
        "Selecione:\n[1] para Pessoa Física\n[2] para Pessoa Jurídica");

    if (option == "1") {
      String cpf = ConsoleRead.readInfo("Digite seu CPF");
      String birthAt = ConsoleRead.readInfo("Digite sua data de nascimento");
      var physicalPerson = PhysicalPersonModel(
          cpf: cpf,
          birthAt: DateTime.parse(birthAt),
          id: id,
          name: name,
          address: address,
          telephone: telephone,
          createdAt: createdAt);
      var user = UserModel(
          id: id, email: email, password: password, person: physicalPerson);

      print("Agora vamos criar sua conta");
      var accountType = ConsoleRead.readInfo(
          "Que tipo de conta você quer criar?\n[current] para Conta Corrente\n[saving] para Conta Poupança\n[investment] para Conta Investimento\n[salary] para Conta Salário");
      
    } else if (option == "2") {
      String cnpj = ConsoleRead.readInfo("Digite seu CNPJ");
      var legalPerson = LegalPersonModel(
          cnpj: cnpj,
          id: id,
          name: name,
          address: address,
          telephone: telephone,
          createdAt: createdAt);

      var user = UserModel(
          id: id, email: email, password: password, person: legalPerson);
    }
  }
}
