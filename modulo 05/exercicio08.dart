import 'dart:io';

void main() {
  int idade;
  double peso, altura;
  int olhosAzuis = 0;
  double somaIdAltInf150 = 0, idadeSup50PesoInf60 = 0;
  int pessoas = 20;
  int ruivoOlhoAzul = 0;

  for (int i = 1; i <= pessoas; i++) {
    print("Pessoa $i:");

    stdout.write("Idade: ");
    idade = int.parse(stdin.readLineSync()!);
    stdout.write("Infome o Peso (em quilos com pontuação): ");
    peso = double.parse(stdin.readLineSync()!);
    stdout.write("Infome a Altura (em metros com pontuação): ");
    altura = double.parse(stdin.readLineSync()!);
    stdout.write("Infome a Cor dos olhos (A- azul, P - preto, V - verde e C - castanho): ");
    String corOlho = stdin.readLineSync()!;
    stdout.write("Infome a Cor do cabelo (P - preto, C - castanho, L - louro e R - ruivo): ");
    String corCabelos = stdin.readLineSync()!;

    if (idade > 50 && peso < 60) {
      idadeSup50PesoInf60++;
    }

    if (altura < 1.50) {
      somaIdAltInf150 += idade;
    }

    if (corOlho.toUpperCase() == 'A') {
      olhosAzuis++;
    }

    if (corCabelos.toUpperCase() == 'R' && corOlho.toUpperCase() != 'A') {
      ruivoOlhoAzul++;
    }
  }

  // Cálculo da média de idades das pessoas com altura inferior a 1,50 metros
  double mediaIdadesAlturaInferior150 =
      somaIdAltInf150 / pessoas;

  // Cálculo da porcentagem de pessoas com olhos azuis
  double porcentagemOlhosAzuis = (olhosAzuis / pessoas) * 100;

  // Resultados
  print("\nResultados Finais:");
  print("1. O número de pessoas com idade superior a 50 anos e peso inferior a 60 quilos é de $idadeSup50PesoInf60 pessoas.");
  print("2. A média das idades de pessoas com altura inferior a 1,5 metros é de $mediaIdadesAlturaInferior150 anos.");
  print("3. A porcentagem de pessoas com olhos azuis é de $porcentagemOlhosAzuis %.");
  print("4. O número de pessoas ruivas e que não possuem olhos azuis é de $ruivoOlhoAzul pessoas.");
}
