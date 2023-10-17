import 'dart:io';

void main() {
  stdout.write("Informe o valor 1: ");
  double valor1 = double.parse(stdin.readLineSync() ?? '');
  stdout.write("Informe o valor 2: ");
  double valor2 = double.parse(stdin.readLineSync() ?? '');

  int escolha = 1;

  while (escolha != 0) {
    print("Selecione uma opção:");
    print("1. Calcular a média entre os números digitados");
    print("2. Calcular a diferença do maior para o menor número");
    print("3. Calcular o produto entre os dois números digitados");
    print("4. Calcular a divisão do primeiro pelo segundo número");
    print("0. Sair");
    print("");

    stdout.write("Informe a opeção escolhida: ");
    escolha = int.parse(stdin.readLineSync() ?? '0');

    switch (escolha) {
      case 1:
        var media = (valor1 + valor2) / 2;
        print("A média é de: $media");
        print("");
        break;
      case 2:
        double maior;
        double menor;

        if (valor1 > valor2) {
          maior = valor1;
          menor = valor2;
        } else {
          maior = valor2;
          menor = valor1;
        }
        double diferenca = maior - menor;

        print("A diferença entre o $maior e $menor número é de: $diferenca");
        print("");
        break;
      case 3:
        double produto = valor1 * valor2;

        print("O produto entre $valor1 e $valor2 é de: $produto");
        print("");
        break;
      case 4:
        if (valor2 != 0) {
          double divisao = valor1 / valor2;
          print("A divisão entre $valor1 e $valor2 é de: $divisao");
        } else {
          print("Não é possível dividir por zero.");
        }
        print("");
        break;
      case 0:
        print("Saindo do programa.");
        break;
      default:
        print("Opção inválida. Informe outra opção.");
        print("");
    }
  }
}