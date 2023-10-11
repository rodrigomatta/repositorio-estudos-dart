import 'dart:io';
void main() {
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync()!.toUpperCase();

  List<String> palavras = frase.split(' ');

  print("Saída:");
  for (String palavra in palavras) {
    print(palavra);
  }
}
