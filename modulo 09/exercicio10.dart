import 'dart:io';
void main() {
  stdout.write("Digite uma frase: ");
  String frase = (stdin.readLineSync() ?? "").replaceAll(" ", "").toLowerCase();
  
  stdout.write("Digite um caractere: ");
  String car = readLine();
  
  int posicao = encontrarUltimaPosicao(frase, car);
  
  if (posicao != -1) {
    print("O caractere '$car' aparece pela última vez na posição $posicao da frase.");
  } else {
    print("O caractere '$car' não foi encontrado na frase.");
  }
}

// encontra a última posição do caractere na frase
int encontrarUltimaPosicao(String frase, String car) {
  for (int i = frase.length -1; i >= 0; i--) {
    if (frase[i] == car) {
      return i+1;
    }
  }
  return -1; 
}

String readLine() {
  String? input = stdin.readLineSync();
  return input ?? "";
}