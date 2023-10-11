import 'dart:io';

void main() {
  while (true) {
    print("---Menu de opções:----:");
    print("--1. Média aritmética--");
    print("--2. Média ponderada---");
    print("--3. Sair--------------");

    stdout.write("Digite a opção desejada: ");
    int? opcao = int.tryParse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        calcularMediaAritmetica();
        break;
      case 2:
        calcularMediaPonderada();
        break;
      case 3:
        print("Encerrando programa.");
        return;
      default:
        print("Opção inválida. Por favor, escolha uma opção válida.");
        break;
    }
  }
}

void calcularMediaAritmetica() {
  stdout.write("Digite a primeira nota:");
  double? nota1 = double.tryParse(stdin.readLineSync()!);
  stdout.write("Digite a segunda nota:");
  double? nota2 = double.tryParse(stdin.readLineSync()!);

  if (nota1 == null || nota2 == null) {
    stdout.write("Notas inválidas. Certifique-se de inserir valores válidos.");
  } else {
    double media = (nota1 + nota2) / 2;
    print("A média aritmética dos valores informados é: ${media.toStringAsFixed(2)}");
  }
}

void calcularMediaPonderada() {
  stdout.write("Digite a primeira nota: ");
  double? nota1 = double.tryParse(stdin.readLineSync()!);

  stdout.write("Digite o peso da primeira nota: ");
  double? peso1 = double.tryParse(stdin.readLineSync()!);

  stdout.write("Digite a segunda nota: ");
  double? nota2 = double.tryParse(stdin.readLineSync()!);

  stdout.write("Digite o peso da segunda nota: ");
  double? peso2 = double.tryParse(stdin.readLineSync()!);

  stdout.write("Digite a terceira nota: ");
  double? nota3 = double.tryParse(stdin.readLineSync()!);

  stdout.write("Digite o peso da terceira nota: ");
  double? peso3 = double.tryParse(stdin.readLineSync()!);

  if (nota1 == null || peso1 == null || nota2 == null || peso2 == null || nota3 == null || peso3 == null) {
    print("Entradas inválidas. Certifique-se de inserir números válidos.");
  } else {
    double media = (nota1 * peso1 + nota2 * peso2 + nota3 * peso3) / (peso1 + peso2 + peso3);
    print("A média ponderada dos valores informados é: ${media.toStringAsFixed(2)}");
  }
}