import 'dart:io';

void main() {
  stdout.write("Informe o valor do seu salário bruto atual: ");
  double? salario = double.tryParse(stdin.readLineSync() ?? '');
  
  if (salario == null) {
    print("Valor de saldo inválido.");
    return;
    
  } else if (salario < 350) {
    double valorSalarioNovo = salario-(salario*0.07)+100;
    print("O valor do seu salário a receber acrescido de imposto e bonificação será de $valorSalarioNovo");

  } else if (salario >= 350 && salario < 600) {
    double valorSalarioNovo = salario-(salario*0.07)+75;
    print("O valor do seu salário a receber acrescido de imposto e bonificação será de $valorSalarioNovo");

  } else if (salario >= 600 && salario < 900) {
    double valorSalarioNovo = salario-(salario*0.07)+50;
    print("O valor do seu salário a receber acrescido de imposto e bonificação será de $valorSalarioNovo");

  } else {
    double valorSalarioNovo = salario-(salario*0.07)+35;
    print("O valor do seu salário a receber acrescido de imposto e bonificação será de $valorSalarioNovo");
  }
}