import 'dart:io';
void main() {
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync()!;

  stdout.write("Digite um caractere: ");
  String caractere = stdin.readLineSync()!;

  int ocorrencias = contarOcorrencias(frase, caractere);

  if (ocorrencias > 0) {
    print("O caractere '$caractere' foi encontrado na frase $ocorrencias vezes.");
  } else {
    print("O caractere '$caractere' não foi encontrado na frase.");
  }
}

int contarOcorrencias(String frase, String caractere) {
  int ocorrencias = 0;

  for (int i = 0; i < frase.length; i++) {
    if (frase[i] == caractere) {
      ocorrencias++;
    }
  }
  return ocorrencias;
}
