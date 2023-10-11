import 'dart:io';

void main() {
  int pessoas = 2;
  int somaIdades = 0;
  int qtdPessoas90kg = 0;
  int qtdPessoasAltura190 = 0;

  for (int i = 1; i <= pessoas; i++) {
    print("Pessoa $i:");

    stdout.write("Idade: ");
    int idade = int.parse(stdin.readLineSync()!);

    stdout.write("Infome o Peso (em quilos com pontuação): ");
    double peso = double.parse(stdin.readLineSync()!);

    stdout.write("Infome a Altura (em metros com pontuação): ");
    double altura = double.parse(stdin.readLineSync()!);

    somaIdades += idade;

    if (peso > 90 && altura < 150) {
      qtdPessoas90kg++;
    }

    if (idade >= 10 && idade <= 30 && altura > 1.9) {
      qtdPessoasAltura190++;
    }
  }

  double mediaIdades = somaIdades / pessoas;
  double percent19Metros = (qtdPessoasAltura190 / pessoas) * 100;

  // Resultados
  print("\nResultados Finais:");
  print("1. A média das idades das pessoas é de $mediaIdades anos.");
  print("2. A quantidade de pessoas com peso superior a 90 quilos e altura inferior a 1,5 metro é de $qtdPessoas90kg pessoas.");
  print("3. A porcentagem de pessoas com idade entre 10 e 30 anos que medem mais de 1,9 metro é de $percent19Metros %.");
}