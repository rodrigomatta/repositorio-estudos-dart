import 'dart:io';
void main() {
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync()!;

  String fraseCriptografada = criptografarFrase(frase);
  print(fraseCriptografada);
}

String criptografarFrase(String frase) {
  List<String> palavras = frase.split(" ");
  String fraseCriptografada = "";

  for (String palavra in palavras) {
    int metade = palavra.length ~/ 2;
    String primeiraMetade = palavra.substring(0, metade);
    String segundaMetade = "?" * (palavra.length - metade);
    
    if (fraseCriptografada.isNotEmpty) {
      fraseCriptografada += " ";
    }
    
    fraseCriptografada += primeiraMetade + segundaMetade;
  }
  return fraseCriptografada;
}