import 'dart:io';
void main() {
  while (true) {
    print("Menu de Opções:");
    print("1. Novo Salário");
    print("2. Férias");
    print("3. Décimo Terceiro");
    print("4. Sair");

    stdout.write("Digite a opção desejada: ");
    var opcao = int.tryParse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        calcularNovoSalario();
        break;
      case 2:
        calcularFerias();
        break;
      case 3:
        calcularDecimoTerceiro();
        break;
      case 4:
        print("Encerrando o programa.");
        return;
      default:
        print("Opção inválida. Tente novamente.");
    }
  }
}

void calcularNovoSalario() {
  stdout.write("Digite o salário do funcionário: ");
  double? salario = double.tryParse(stdin.readLineSync()!);

  if (salario != null) {
    double novoSalario;
    if (salario <= 210) {
      novoSalario = salario * 1.15;
    } else if (salario <= 600) {
      novoSalario = salario * 1.10;
    } else {
      novoSalario = salario * 1.05;
    }

    print("O novo Salário é de R\$ ${novoSalario.toStringAsFixed(2)}");
  } else {
    print("Salário inválido.");
  }
}

void calcularFerias() {
  stdout.write("Digite o salário do funcionário: ");
  var salario = double.tryParse(stdin.readLineSync()!);

  if (salario != null) {
    double valorFerias = salario + (salario / 3);
    print("O valor das Férias é de R\$ ${valorFerias.toStringAsFixed(2)}");
  } else {
    print("Salário inválido.");
  }
}

void calcularDecimoTerceiro() {
  stdout.write("Digite o salário do funcionário: ");
  var salario = double.tryParse(stdin.readLineSync()!);

  if (salario != null) {
    stdout.write("Digite o número de meses de trabalho (até 12 meses): ");
    var meses = int.tryParse(stdin.readLineSync()!);

    if (meses != null && meses >= 1 && meses <= 12) {
      double decimoTerceiro = (salario * meses) / 12;
      print("O Valor do Décimo Terceiro é de R\$ ${decimoTerceiro.toStringAsFixed(2)}");
    } else {
      print("Número de meses inválido.");
    }
  } else {
    print("Salário inválido.");
  }
}