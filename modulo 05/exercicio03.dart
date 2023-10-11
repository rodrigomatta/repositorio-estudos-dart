import 'dart:io';

void main() {
  int idade = 0;
  int faixa1 = 0, faixa2 = 0, faixa3 = 0, faixa4 = 0, faixa5 = 0;
  
  for (int i = 0; i < 15; i++) {
    stdout.write("Informe a sua idade: ");
    idade = int.parse(stdin.readLineSync()!);

    if (idade <= 15) {
      faixa1++;
    } else if (idade >= 16 && idade <= 30) {
      faixa2++;
    } else if (idade >= 31 && idade <= 45) {
      faixa3++;
    } else if (idade >= 46 && idade <= 60) {
      faixa4++;
    } else {
      faixa5++;
    }
  }

  int totalPessoas = faixa1 + faixa2 + faixa3 + faixa4 + faixa5;

  double porcentagemPrimeiraFaixa = (faixa1 / totalPessoas) * 100;
  double porcentagemUltimaFaixa = (faixa5 / totalPessoas) * 100;

  print("Quantidade de pessoas em cada faixa etária:");
  print("Faixa 1 (até 15 anos): $faixa1 pessoas");
  print("Faixa 2 (16 a 30 anos): $faixa2 pessoas");
  print("Faixa 3 (31 a 45 anos): $faixa3 pessoas");
  print("Faixa 4 (46 a 60 anos): $faixa4 pessoas");
  print("Faixa 5 (acima de 60 anos): $faixa5 pessoas");

  print("\nPorcentagem de pessoas na primeira faixa etária: ${porcentagemPrimeiraFaixa.toStringAsFixed(2)}%");
  print("Porcentagem de pessoas na última faixa etária: ${porcentagemUltimaFaixa.toStringAsFixed(2)}%");
}