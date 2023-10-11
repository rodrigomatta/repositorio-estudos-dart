import 'dart:io';

void main() {
  int VotosCandidato1 = 0, VotosCandidato2 = 0, VotosCandidato3 = 0, VotosCandidato4 = 0;
  int totalVotosNulos = 0;
  int totalVotosEmBranco = 0;
  int totalVotos = 0;

  while (true) {
    stdout.write("Digite o código do voto (1, 2, 3, 4, 5, 6) ou 0 para encerrar: ");
    int voto = int.parse(stdin.readLineSync() ?? '0');

    if (voto == 0) {
      break;
    } else if (voto == 1) {
      VotosCandidato1++;
      totalVotos++;
    } else if (voto == 2) {
      VotosCandidato2++;
      totalVotos++;
    } else if (voto == 3) {
      VotosCandidato3++;
      totalVotos++;
    } else if (voto == 4) {
      VotosCandidato4++;
      totalVotos++;
    } else if (voto == 5) {
      totalVotosNulos++;
      totalVotos++;
    } else if (voto == 6) {
      totalVotosEmBranco++;
      totalVotos++;
    } else {
      print("Código de voto inválido.");
    }
  }

  double porcentagemNulos = (totalVotosNulos / totalVotos) * 100;
  double porcentagemEmBranco = (totalVotosEmBranco / totalVotos) * 100;

  print("Total de votos por candidato:");
  print("Candidato 1: $VotosCandidato1 votos");
  print("Candidato 2: $VotosCandidato2 votos");
  print("Candidato 3: $VotosCandidato3 votos");
  print("Candidato 4: $VotosCandidato4 votos");
  print("Total de votos nulos: $totalVotosNulos votos");
  print("Total de votos em branco: $totalVotosEmBranco votos");
  print("Porcentagem de votos nulos sobre o total de votos: ${porcentagemNulos.toStringAsFixed(2)}%");
  print("Porcentagem de votos em branco sobre o total de votos: ${porcentagemEmBranco.toStringAsFixed(2)}%");
}
