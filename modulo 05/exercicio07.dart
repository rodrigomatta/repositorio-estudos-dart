import 'dart:io';

void main() {
  int qtPessoasAcima50 = 0;
  double totalAlturas10To20 = 0.0;
  int qtPessoas10To20 = 0;
  int qtPessoasPesoMenor40 = 0;

  for (int i = 1; i <= 25; i++) {
    stdout.write("Informe a idade da pessoa $i:");
    double idade = double.parse(stdin.readLineSync()!);
    stdout.write("Informe a altura da pessoa $i:");
    double altura = double.parse(stdin.readLineSync()!);
    stdout.write("Informe o peso da pessoa $i:");
    double peso = double.parse(stdin.readLineSync()!);

    if (idade > 50) {
      qtPessoasAcima50++;
    }

    if (idade >= 10 && idade <= 20) {
      totalAlturas10To20 += altura;
      qtPessoas10To20++;
    }

    if (peso < 40) {
      qtPessoasPesoMenor40++;
    }
  }

  double mediaAlturas = totalAlturas10To20 / qtPessoas10To20;
  double porcentPeso = (qtPessoasPesoMenor40 / 25) * 100;

  print("A quantidade de pessoas com idade superior a 50 anos é $qtPessoasAcima50");
  print("A média de alturas entre pessoas com idade entre 10 e 20 anos é $mediaAlturas");
  print("A percentagem de pessoas com peso inferior a 40 quilos é $porcentPeso%");
}