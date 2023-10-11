import 'dart:io';

void main() {
  stdout.write("Informe o valor do seu salário atual: ");
  double? salario = double.tryParse(stdin.readLineSync() ?? '');
  
  if (salario == null) {
    print("Valor de saldo inválido.");
    return;
    
  } else if (salario < 300) {
    double valorSalarioNovo = salario+(salario*0.5);
    print("O valor do seu salário com o aumento passará a ser de RS $valorSalarioNovo");

  } else if (salario >= 300 && salario < 500) {
    double valorSalarioNovo = salario+(salario*0.4);
    print("O valor do seu salário com o aumento passará a ser de RS $valorSalarioNovo");

  } else if (salario >= 500 && salario < 700) {
    double valorSalarioNovo = salario+(salario*0.3);
    print("O valor do seu salário com o aumento passará a ser de RS $valorSalarioNovo");

  } else if (salario >= 700 && salario < 800) {
    double valorSalarioNovo = salario+(salario*0.2);
    print("O valor do seu salário com o aumento passará a ser de RS $valorSalarioNovo");

  } else if (salario >= 800 && salario < 1000) {
    double valorSalarioNovo = salario+(salario*0.1);
    print("O valor do seu salário com o aumento passará a ser de RS $valorSalarioNovo");

  } else {
    double valorSalarioNovo = salario+(salario*0.05);
    print("O valor do seu salário com o aumento passará a ser de RS $valorSalarioNovo");
  }
}