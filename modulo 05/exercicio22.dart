import 'dart:io';

void main() {
  int i = 0, contadorPessoas = 0;
  double somaAlturas = 0;

  while (true) {
    i++;
    stdout.write("Digite a idade da pessoa $i (ou 0 para encerrar): ");
    int idade = int.parse(stdin.readLineSync() ?? '0');
    
    if (idade <= 0) {
      break;
    }

    stdout.write("Digite a altura da pessoa $i (em metros): ");
    double? altura = double.tryParse(stdin.readLineSync()!);

    if (altura == null) {
      print("Altura inválida. Por favor, digite novamente.");
      continue;
    }

    if (idade > 50) {
      somaAlturas += altura;
      contadorPessoas++;
    }
  }

  if (contadorPessoas > 0) {
    double mediaAlturas = somaAlturas / contadorPessoas;
    print("Média de alturas das pessoas com mais de 50 anos: $mediaAlturas metros");
  } else {
    print("Nenhuma pessoa com mais de 50 anos foi registrada.");
  }
}
