import 'dart:io';

void main() {
  stdout.write("Informe o valor 1: ");
  String? input1 = stdin.readLineSync();
  stdout.write("Informe o valor 2: ");
  String? input2 = stdin.readLineSync();

  var value1 = double.tryParse(input1 ?? "0.0") ?? 0.0;
  var value2 = double.tryParse(input2 ?? "0.0") ?? 0.0;

  int escolha;

  do {
    print("Selecione uma opção:");
    print("1. Calcular a média entre os números digitados: ");
    print("2. Calcular a diferença do maior para o menor número");
    print("3. Calcular o produto entre os dois numeros digitados");
    print("4. Calcular a divisão do primeiro pelo segundo número");
    print("0. Sair");
    print("");

    String? input = stdin.readLineSync();
    escolha = int.tryParse(input ?? "-1") ?? -1;

    switch (escolha) {
      case 1:
        var media = (value1 + value2) / 2;
        print("A média é de: $media");
        print("");

        break;
      case 2:
        double maior = value1 > value2 ? value1 : value2;
        double menor = value1 < value2 ? value1 : value2;
        double diferenca = maior - menor;

        print("A diferença entre o $maior e $menor número é de: $diferenca");
        print("");

        break;
      case 3:
        double produto = value1 * value2;

        print("O produto entre $value1 e $value2 é de: $produto");
        print("");

        break;
      case 4:
        double divisao = value1 / value2;

        print("A divisão entre $value1 e $value2 é de: $divisao");
        print("");

        break;
      case 0:
        print("Saindo do programa.");
        print("");
        
        break;
      default:
        print("Opção inválida. Informe outra opção.");
        print("");
    }
  } while (escolha != 0);
}
