import 'dart:io';
void main() {
  int totalSim = 0, totalNao = 0, mulheresSim = 0, homensNao = 0, totalHomens = 0;

  for (int i = 1; i <= 10; i++) {
    stdout.write("Digite o sexo do entrevistado (m - mulher, h - homem) $i: ");
    String sexo = stdin.readLineSync()!.toLowerCase();
    stdout.write("Resposta (s - sim, n - não) $i: ");
    String resposta = stdin.readLineSync()!.toLowerCase();

    if (resposta == "n") {
      totalNao++;
    } else if (resposta == "s") {
      totalSim++;
    } else {
      print(
          "Resposta inválida. Por favor, digite 's' para sim ou 'n' para não.");
      i--; // Em caso de erro, decrementa o contador para repetir a entrada do espectador em execução.
      continue;
    }

    if (sexo == "h") {
      totalHomens++;
      if (resposta == "n") {
        homensNao++;
      }
    } else if (sexo == "m") {
      if (resposta == "s") {
        mulheresSim++;
      }
    } else {
      print(
          "Sexo inválido. Por favor, digite 'm' para mulher ou 'h' para homem.");
      i--; // Em caso de erro, decrementa o contador para repetir a entrada do espectador em execução.
    }
  }

  double porcentagemHomensNao =
      totalHomens > 0 ? (homensNao / totalHomens) * 100 : 0;

  print("O número de pessoas que responderam sim foi de $totalSim pessoas!");
  print("O número de pessoas que responderam não foi de $totalNao pessoas!");
  print(
      "O número de mulheres que responderam sim foi de $mulheresSim mulheres!");
  print(
      "A porcentagem de homens que responderam não foi de $porcentagemHomensNao%");
}
