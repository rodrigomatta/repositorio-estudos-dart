import 'dart:io';
void main() {
  int i = 0;
  double totalInvestido = 0;
  double totalJuros = 0;

  while (true) {
    i++;
    stdout.write("Digite o código do cliente $i (ou 0 para sair): ");
    int codigoCliente = int.parse(stdin.readLineSync()!);

    if (codigoCliente <= 0) {
      break;
    }

    stdout.write("Digite o tipo de investimento do cliente $i (1 para Poupança, 2 para Poupança Plus, 3 para Fundos de Renda Fixa): ");
    int tipoInvestimento = int.parse(stdin.readLineSync()!);

    stdout.write("Digite o valor investido pelo cliente $i: ");
    double valorInvestido = double.parse(stdin.readLineSync()!);

    double rendimentoMensal = 0;

    switch (tipoInvestimento) {
      case 1:
        rendimentoMensal = valorInvestido * 0.015;
        break;
      case 2:
        rendimentoMensal = valorInvestido * 0.02;
        break;
      case 3:
        rendimentoMensal = valorInvestido * 0.04;
        break;
      default:
        print("Tipo de investimento inválido.");
        continue;
    }

    totalInvestido += valorInvestido;
    totalJuros += rendimentoMensal;

    print("Rendimento mensal: R\$ ${rendimentoMensal.toStringAsFixed(2)}");
  }
  print("Total investido: R\$ ${totalInvestido.toStringAsFixed(2)}");
  print("Total de juros pagos: R\$ ${totalJuros.toStringAsFixed(2)}");
}
