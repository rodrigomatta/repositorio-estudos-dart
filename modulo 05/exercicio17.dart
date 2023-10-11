import 'dart:io';
void main() {
  int totalAud = 0, audCanal4 = 0, audCanal5 = 0, audCanal7 = 0, audCanal12 = 0;

  while (true) {
    stdout.write("Digite o número do canal (4, 5, 7, 12) ou 0 para encerrar: ");
    int numeroCanal = int.parse(stdin.readLineSync()!);

    if (numeroCanal == 0) {
      break;
    } else if ([4, 5, 7, 12].contains(numeroCanal)) {
      stdout.write("Digite o número de pessoas assistindo: ");
      int numeroPessoas = int.parse(stdin.readLineSync()!);

      totalAud += numeroPessoas;

      switch (numeroCanal) {
        case 4:
          audCanal4 += numeroPessoas;
          break;
        case 5:
          audCanal5 += numeroPessoas;
          break;
        case 7:
          audCanal7 += numeroPessoas;
          break;
        case 12:
          audCanal12 += numeroPessoas;
          break;
      }
    } else {
      print("Número de canal inválido. Por favor, informe um dos canais disponiveis 4, 5, 7 ou 12.");
    }
  }

  if (totalAud > 0) {
    print("Porcentagem de audiência por canal:");
    print("Canal 4: ${(audCanal4 / totalAud * 100).toStringAsFixed(2)}%");
    print("Canal 5: ${(audCanal5 / totalAud * 100).toStringAsFixed(2)}%");
    print("Canal 7: ${(audCanal7 / totalAud * 100).toStringAsFixed(2)}%");
    print("Canal 12: ${(audCanal12 / totalAud * 100).toStringAsFixed(2)}%");
  } else {
    print("Nenhum dado de audiência foi registrado.");
  }
}