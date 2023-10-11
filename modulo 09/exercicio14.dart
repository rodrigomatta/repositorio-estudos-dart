import 'dart:io';
void main() {
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync()!;
  frase = removerAcentos(frase);

  String resultado = converterFrase(frase);
  print("Frase convertida: $resultado");
}

String converterFrase(String frase) {
  List<String> vogais = ['a', 'e', 'i', 'o', 'u'];
  List<String> palavras = frase.split(' ');

  String resultado = '';

  for (String palavra in palavras) {
    String palavraConvertida = '';

    for (int i = 0; i < palavra.length; i++) {
      String letra = palavra[i].toLowerCase();

      if (vogais.contains(letra)) {
        // vogal, converte para maiúsculo
        palavraConvertida += letra.toUpperCase();
      } else {
        // consoante, converte para minúsculo
        palavraConvertida += letra;
      }
    }
    resultado += palavraConvertida + ' ';
  }
  resultado = resultado.trim();
  return resultado;
}

String removerAcentos(String frase) {
  final Map<String, String> mapaAcentos = {
    'á': 'a',
    'é': 'e',
    'í': 'i',
    'ó': 'o',
    'ú': 'u',
    'â': 'a',
    'ê': 'e',
    'î': 'i',
    'ô': 'o',
    'û': 'u',
    'à': 'a',
    'è': 'e',
    'ì': 'i',
    'ò': 'o',
    'ù': 'u',
    'ã': 'a',
    'ẽ': 'e',
    'ĩ': 'i',
    'õ': 'o',
    'ũ': 'u',
    'ç': 'c',
  };

  String resultado = '';
  for (var i = 0; i < frase.length; i++) {
    final char = frase[i];
    final charSemAcento = mapaAcentos[char] ?? char;
    resultado += charSemAcento;
  }
  return resultado;
}