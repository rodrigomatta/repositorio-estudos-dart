import 'dart:io';

void main() {
  int otimoTotal = 0, idadeOtimoTotal = 0, regularTotal = 0, bomTotal = 0;

  for (int i = 1; i <= 15; i++) {
    stdout.write("Digite a idade do espectador $i: ");
    int idade = int.parse(stdin.readLineSync()!);
    stdout.write("Digite a opinião do espectador $i (ótimo, bom ou regular): ");
    String opiniao = stdin.readLineSync()!.toLowerCase();

    if (opiniao == "otimo"||opiniao == "ótimo") {
      otimoTotal++;
      idadeOtimoTotal += idade;
    } else if (opiniao == "regular") {
      regularTotal++;
    } else if (opiniao == "bom") {
      bomTotal++;
    } else {
      print("Opinião inválida. Por favor, digite 'otimo', 'bom' ou 'regular'.");
      i--; //Em caso de erro vai decrementar o contador para repetir a entrada do espectador em execução.
    }
  }

  //Média das idades que responderam ótimo.
  double mediaIdadesOtimo = otimoTotal > 0 ? idadeOtimoTotal / otimoTotal : 0;
  //Porcentagem de pessoas que responderam bom.
  double percentagemBom = (bomTotal / 15) * 100;

  print("A Média das idades das pessoas que responderam ótimo foi de ${mediaIdadesOtimo.toStringAsFixed(2)} anos");
  print("A Quantidade de pessoas que responderam regular foi de $regularTotal pessoas");
  print("A Percentagem de pessoas que responderam bom foi de $percentagemBom%");
}