import 'dart:io';
void main() {
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync() ?? '';

  frase = corrigirFrase(frase);

  List<String> palavras = frase.split(' ');

  int quantidadePalavras = palavras.length;

  print("Quantidade de palavras na frase: $quantidadePalavras");
}

String corrigirFrase(String frase) {
  String fraseCorrigida = frase.trim().replaceAll(RegExp(r'\s+'), ' ');

  return fraseCorrigida;
}
