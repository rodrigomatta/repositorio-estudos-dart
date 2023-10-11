import 'dart:io';

void main() {
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync()!.toLowerCase();

  List<String> palavras = frase.split(' ');

  String palavraCombinada = "";

  if (palavras.length % 2 == 0) {
    for (int i = 0; i < palavras.length; i += 2) {
      String primeiraPalavra = palavras[i];
      String segundaPalavra = palavras[i + 1];

      for (int j = 0; j < primeiraPalavra.length; j++) {
        palavraCombinada += primeiraPalavra[j] +
            (j < segundaPalavra.length
                ? segundaPalavra[segundaPalavra.length - 1 - j]
                : '');
      }
      palavraCombinada += ' ';
    }
    
  } else {
    for (int i = 0; i < palavras.length - 1; i += 2) {
      String primeiraPalavra = palavras[i];
      String segundaPalavra = palavras[i + 1];

      for (int j = 0; j < primeiraPalavra.length; j++) {
        palavraCombinada += primeiraPalavra[j] +
            (j < segundaPalavra.length
                ? segundaPalavra[segundaPalavra.length - 1 - j]
                : '');
      }
      palavraCombinada += ' ';
    }

    String palavraImpar = palavras.last.split('').reversed.join();
    palavraCombinada += palavraImpar;
  }
  print("Saída: $palavraCombinada");
}
