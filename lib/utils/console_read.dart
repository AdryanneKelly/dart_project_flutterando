import 'dart:convert';
import 'dart:io';

class ConsoleRead {
  static String readInfo(String texto) {
    print(texto);
    return stdin.readLineSync(encoding: utf8)!;
  }
}
