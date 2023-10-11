import 'dart:io';

void main() {
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync() ?? "";

  List<String> numeros = [
    "ZERO",
    "UM",
    "DOIS",
    "TRÊS",
    "QUATRO",
    "CINCO",
    "SEIS",
    "SETE",
    "OITO",
    "NOVE"
  ];

  List<String> palavras = frase.split(" ");

  for (int i = 0; i < palavras.length; i++) {
    String palavra = palavras[i]; // Pega a palavra atual

    // Verifica se a palavra não está vazia e se é composta apenas de números de 0 a 9
    if (palavra.isNotEmpty && palavra.replaceAll(RegExp(r'[0-9]'), '') == '') {
      int numero = int.parse(palavra); // Converte a palavra em um número inteiro

      // Verifica se o número está no intervalo de 0 a 9
      if (numero >= 0 && numero <= 9) {
        palavras[i] = numeros[numero]; // Substitui a palavra pelo número por extenso
      }
    }
  }

  String fraseModificada = palavras.join(" ");

  print("Saída: $fraseModificada");
}
