import 'dart:io';
void main() {
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync()!.toUpperCase();
  String fraseCriptografada = criptografarFrase(frase);

  print("Saída: $fraseCriptografada");
}

String criptografarFrase(String frase) {
  String fraseInvertida = inverteFrase(frase);
  String fraseCriptografada = '';

  for (int i = 0; i < fraseInvertida.length; i++) {
    if (consoante(fraseInvertida[i])) {
      fraseCriptografada += '#';
    } else {
      fraseCriptografada += fraseInvertida[i];
    }
  }
  return fraseCriptografada;
}

String inverteFrase(String texto) {
  // 'runes' retorna uma sequência de códigos de ponto Unicode da string
  // 'toList()' converte essa sequência em uma lista de inteiros
  // 'reversed' inverte a ordem dos elementos na lista
  // 'String.fromCharCodes()' cria uma nova string a partir dos códigos de ponto Unicode
  return String.fromCharCodes(texto.runes.toList().reversed);
}

bool consoante(String letra) {
  // Verifica se a letra contém na sequência de consoantes em maiúsculo
  return "BCDFGHJKLMNPQRSTVWXYZ".contains(letra);
}