import 'dart:io';

void main() {
  List<int> logica = [];
  List<int> programacao = [];

  for (int i = 1; i < 16; i++) {
    stdout.write("Digite o número de matrícula $i para Lógica: ");
    int matricula = int.parse(stdin.readLineSync()!);

    if (matricula <= 0) {
      print("numero invalido informado!");
      break;
    } else {
      logica.add(matricula);
    }
  }

  for (int i = 1; i < 11; i++) {
    stdout.write("Digite o número de matrícula $i para Linguagem de Programação: ");
    int matricula = int.parse(stdin.readLineSync()!);

    if (matricula <= 0) {
      print("numero invalido informado!");
      break;
    } else {
      programacao.add(matricula);
    }
  }

  List<int> comuns = logica.where((matricula) => programacao.contains(matricula)).toList();

  if (comuns.isNotEmpty) {
    print("Os seguintes números de alunos estão cursando ambas as disciplinas:");
    for (int matricula in comuns) {
      print(matricula);
    }
  } else {
    print("Nenhum aluno está cursando ambas as disciplinas!");
  }
}