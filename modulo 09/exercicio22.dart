import 'dart:io';
void main() {
  stdout.write("Informe a string: ");
  String input = stdin.readLineSync()!;
  
  String carMax = '';
  int contMax = 0, contAtual = 1;

  for (int i = 1; i < input.length; i++) {
    if (input[i] == input[i - 1]) {
      contAtual++;
    } else {
      contAtual = 1;
    }

    if (contAtual > contMax) {
      carMax = input[i];
      contMax = contAtual;
    }
  }
  print("Maior $carMax, tamanho $contMax");
}