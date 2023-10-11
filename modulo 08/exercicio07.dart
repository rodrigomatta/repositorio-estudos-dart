import 'dart:io';
void main() {
  double media = calcularMediaAritmetica();
  print("A média aritmética dos valores positivos digitados é: $media");
}

double calcularMediaAritmetica() {
  double soma = 0;
  int contador = 0;

  while (true) {
    stdout.write("Digite um valor positivo (ou um valor negativo para sair): ");
    double valor = double.parse(stdin.readLineSync()!);

    if (valor < 0) {
      break;
    }

    if (valor >= 0) {
      soma += valor;
      contador++;
    }
  }

  if (contador == 0) {
    print("Nenhum valor positivo foi inserido.");
    return 0;
  } else {
    double media = soma / contador;
    return media;
  }
}