import 'dart:io';
void main() {
  stdout.write("Digite uma frase: ");
  String frase = (stdin.readLineSync() ?? "").replaceAll(" ", "").toLowerCase();

  stdout.write("Digite um caractere: ");
  String car = stdin.readLineSync() ?? "";

  int posicao = fPosicao(frase, car);

  if (posicao != -1) {
    print("O caractere '$car' aparece pela primeira vez na posição $posicao da frase.");
  } else {
    print("O caractere '$car' não foi encontrado na frase.");
  }
}

int fPosicao(String frase, String caractere) {
  // Percorre a frase e procura pelo caractere
  for (int i = 0; i < frase.length; i++) {
    if (frase[i] == caractere) {
      return i + 1; // A posição começa em 1, não em 0
    }
  }
  return -1;
}
