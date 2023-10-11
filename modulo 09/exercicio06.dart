import 'dart:io';
void main() {
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync()!;
  String novaFrase = "";
  
  for (int i = 0; i < frase.length; i++) {
    novaFrase += frase[i] * 2;
  }

  print("Saída: $novaFrase");
}