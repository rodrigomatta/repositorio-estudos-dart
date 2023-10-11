import 'dart:io';

void main() {
  int? maiorValor, menorValor;

  while (true) {
    stdout.write("Digite um valor positivo (ou 0 para encerrar): ");
    int valor = int.parse(stdin.readLineSync()!);

    if (valor == 0) {
      if (maiorValor == null && menorValor == null) {
        print("Nenhum valor positivo foi inserido.");
      } else {
        print("O maior valor do conjunto é: $maiorValor");
        print("O menor valor do conjunto é: $menorValor");
      }
      break;
      
    } else if (valor <= 0) {
      print("Valor negativo ou igual a zero informado. Tente novamente.");
      continue;
    }

    if (maiorValor == null || valor > maiorValor) {
      maiorValor = valor;
    }

    if (menorValor == null || valor < menorValor) {
      menorValor = valor;
    }
  }
}