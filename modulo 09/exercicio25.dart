import 'dart:io';
void main() {
  List<String> vogais = [];
  List<int> posicoes = [];

  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync()!.toLowerCase();

  String fraseCriptografada = criptografar(frase, vogais, posicoes);

  print("Frase criptografada: $fraseCriptografada");

  String fraseDescriptografada =
      decriptografar(fraseCriptografada, vogais, posicoes);

  print("Frase descriptografada: $fraseDescriptografada");
  print(posicoes);
}

String criptografar(String frase, List<String> vogais, List<int> posicoes) {
  String fraseCriptografada = "";
  for (int i = 0; i < frase.length; i++) {
    String letra = frase[i];
    if ("aeiou".contains(letra)) {
      vogais.add(letra);
      posicoes.add(i);
      fraseCriptografada += "";
    } else {
      fraseCriptografada += letra;
    }
  }
  return fraseCriptografada;
}

String decriptografar(
    String fraseCriptografada, List<String> vogais, List<int> posicoes) {
  StringBuffer fraseDescriptografada = StringBuffer(fraseCriptografada);

  for (int i = 0; i < fraseCriptografada.length; i++) {
    int posicao = posicoes[i];
    String vogal = vogais[i];

    if (posicao >= 0 && posicao <= fraseDescriptografada.length) {
      String antes = fraseDescriptografada.toString().substring(0, posicao);
      String depois = fraseDescriptografada.toString().substring(posicao);
      fraseDescriptografada.clear();
      fraseDescriptografada.write(antes + vogal + depois);
    }
  }
  return fraseDescriptografada.toString();
}
