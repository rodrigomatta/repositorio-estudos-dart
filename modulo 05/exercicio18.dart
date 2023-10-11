import 'dart:io';
void main() {
  String sexoMenorSalario = "";
  double somaSalarios = 0;
  int contadorPessoas = 0,
      i = 0,
      maiorIdade = -1,
      menorIdade = 999,
      idadeMenorSalario = 0;
  double menorSalario = double.infinity;
  int mulheresSalarioAte200 = 0;

  while (true) {
    i++;
    stdout.write("Digite a idade da pessoa $i (ou um valor negativo para sair): ");
    int idade = int.parse(stdin.readLineSync()!);

    if (idade < 0) {
      break;
    }

    stdout.write("Digite o sexo da pessoa $i (M/F): ");
    String sexo = stdin.readLineSync()!.toLowerCase();
    stdout.write("Digite o salário da pessoa $i: ");
    double salario = double.parse(stdin.readLineSync()!);

    somaSalarios += salario;
    contadorPessoas++;
    if (sexo != "m" || sexo != "f") {
      if (idade > maiorIdade) {
        maiorIdade = idade;
      }
      if (idade < menorIdade) {
        menorIdade = idade;
      }
      if (sexo == "f" && salario <= 200) {
        mulheresSalarioAte200++;
      }
      if (salario < menorSalario) {
        menorSalario = salario;
        idadeMenorSalario = idade;
        sexoMenorSalario = sexo;
      }
    } else {
      print("Valor fornescido inválido!");
    }
  }

  double mediaSalarios = somaSalarios / contadorPessoas;

  print("A média dos salários é de ${mediaSalarios.toStringAsFixed(2)}");
  print("A maior idade do grupo é de $maiorIdade anos");
  print("A menor idade do grupo é de $menorIdade anos");
  print("A quantidade de mulheres com salário até 200 reais é de $mulheresSalarioAte200 mulher(es).");
  print("Os dados da pessoa com menor salário são: \nIdade: $idadeMenorSalario, \nSexo: $sexoMenorSalario, \nSalário: ${menorSalario.toStringAsFixed(2)}");
}
