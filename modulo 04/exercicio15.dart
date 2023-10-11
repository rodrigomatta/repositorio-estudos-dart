import 'dart:io';

void main() {
  stdout.write("Informe o valor do seu investimento: ");
  double? valorInv = double.tryParse(stdin.readLineSync() ?? '');
  int escolha = -1;

  do {
    print("Selecione a opção do seu investimento:");
    print("1. Poupança");
    print("2. Fundos de Renda Fixa");
    print("0. Sair");
    print("");

    String? input = stdin.readLineSync();
    escolha = int.tryParse(input ?? "-1") ?? -1;

    switch (escolha) {
      case 1:
        double resultado = valorInv! + (valorInv * 0.03);
        print("O valor do seu investimento corrigido é de R\$ $resultado");
        print("");
        return;
      case 2:
        double resultado = valorInv! + (valorInv * 0.04);
        print("O valor do seu investimento corrigido é de R\$ $resultado");
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