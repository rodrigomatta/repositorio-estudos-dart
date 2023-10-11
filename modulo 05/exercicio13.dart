import 'dart:io';
void main() {
  double mediaFaixa1 = 0, mediaFaixa2 = 0, mediaFaixa3 = 0, mediaFaixa4 = 0;
  int countFaixa1 = 0, countFaixa2 = 0, countFaixa3 = 0, countFaixa4 = 0;

  for (int i = 1; i <= 15; i++) {
    stdout.write("Digite a idade da pessoa ${i}:");
    int idade = int.parse(stdin.readLineSync()!);

    stdout.write("Digite o peso da pessoa ${i}:");
    double peso = double.parse(stdin.readLineSync()!);

    if (idade >= 1 && idade <= 10) {
      mediaFaixa1 = (mediaFaixa1 * countFaixa1 + peso) / (countFaixa1 + 1);
      countFaixa1++;
    } else if (idade >= 11 && idade <= 20) {
      mediaFaixa2 = (mediaFaixa2 * countFaixa2 + peso) / (countFaixa2 + 1);
      countFaixa2++;
    } else if (idade >= 21 && idade <= 30) {
      mediaFaixa3 = (mediaFaixa3 * countFaixa3 + peso) / (countFaixa3 + 1);
      countFaixa3++;
    } else {
      mediaFaixa4 = (mediaFaixa4 * countFaixa4 + peso) / (countFaixa4 + 1);
      countFaixa4++;
    }
  }

  print("Média de peso para a faixa de 1 a 10 anos é de ${mediaFaixa1.toStringAsFixed(2)} Kg");
  print("Média de peso para a faixa de 11 a 20 anos é de ${mediaFaixa2.toStringAsFixed(2)} Kg");
  print("Média de peso para a faixa de 21 a 30 anos é de ${mediaFaixa3.toStringAsFixed(2)} Kg");
  print("Média de peso para a faixa de 31 anos para cima é de ${mediaFaixa4.toStringAsFixed(2)} Kg");
}