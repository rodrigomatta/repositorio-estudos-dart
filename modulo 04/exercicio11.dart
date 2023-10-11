import 'dart:io';

void main() {
  stdout.write("Informe o valor do seu salário atual: ");
  double? salario = double.tryParse(stdin.readLineSync() ?? '');
  
  if (salario == null) {
    print("Valor de saldo inválido.");
    return;
  } else if (salario < 300) {
    double valorSalarioNovo = salario+(salario*0.15);
    double valorAumento = salario*0.15;
    print("O Novo valor do seu salário será de RS $valorSalarioNovo, o aumento foi de RS $valorAumento");

  } else if (salario >= 300 && salario < 600) {
    double valorSalarioNovo = salario+(salario*0.1);
     double valorAumento = salario*0.1;
    print("O Novo valor do seu salário será de RS $valorSalarioNovo, o aumento foi de RS $valorAumento");

  } else if (salario >= 600 && salario < 900) {
    double valorSalarioNovo = salario+(salario*0.05);
     double valorAumento = salario*0.05;
    print("O Novo valor do seu salário será de RS $valorSalarioNovo, o aumento foi de RS $valorAumento");

  } else {
    double valorSalarioNovo = salario+(salario*0.0);
     double valorAumento = salario*0.0;
    print("O Novo valor do seu salário será de RS $valorSalarioNovo, o aumento foi de RS $valorAumento");
  }
}