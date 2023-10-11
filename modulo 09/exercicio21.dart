import 'dart:io';
void main() {
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync()!;

  List<String> palavras = frase.split(' ');

  if (palavras.length < 2) {
    print("A frase deve conter pelo menos duas palavras.");
    return;
  }

  String primeiraPalavra = palavras[0];
  palavras[0] = palavras[palavras.length - 1];
  palavras[palavras.length - 1] = primeiraPalavra;

  String fraseCriptografada = palavras.join(' ');

  print("Saída: $fraseCriptografada");
}
