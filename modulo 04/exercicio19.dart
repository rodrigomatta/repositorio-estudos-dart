import 'dart:io';

void main() {
  stdout.write("Informe a sua altura no formato metros.centimetros (ex: 1.70): ");
  double? h = double.tryParse(stdin.readLineSync() ?? '');
  int escolha = -1;

  do {
    print("Selecione o seu sexo:");
    print("1. Masculino");
    print("2. Feminino");
    print("0. Sair");
    print("");

    String? input = stdin.readLineSync();
    escolha = int.tryParse(input ?? "-1") ?? -1;

    switch (escolha) {
      case 1:
        double resultado = (72.7 * h!) - 58;
        print("O seu peso ideal é de ${resultado.toStringAsFixed(2)} Kg.");
        print("");
        return;
      case 2:
        double resultado = (62.1 * h!) - 44.7;
        print("O seu peso ideal é de ${resultado.toStringAsFixed(2)} Kg.");
        print("");
        return;
      case 0:
        print("Encerrando.");
        print("");
        break;
      default:
        print("Opção inválida. Informe outra opção.");
        print("");
    }
  } while (escolha != 0);
}