import 'dart:io';

void main() {
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync() ?? "";

  // trim() é usado para eliminar espaços no início e no final da frase
  // replaceAll() com expressão regular (RegExp) para substituir espaços entre palavras por um único espaço.
  String fraseSemEspacos = frase.trim().replaceAll(RegExp(r'\s+'), '');

  print("Nova frase sem espaços: $fraseSemEspacos");
}
