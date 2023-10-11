import 'dart:io';
void main() {
  List<String> nomesAlunos = [];
  List<double> notasAlunos = [];

  for (int i = 0; i < 30; i++) {
    stdout.write("Digite o nome do aluno ${i + 1}: ");
    String nome = stdin.readLineSync()!;
    nomesAlunos.add(nome);

    double somaNotas = 0;
    for (int j = 0; j < 4; j++) {
      stdout.write("Digite a nota da avaliação ${j + 1} para ${nome}: ");
      double nota = double.parse(stdin.readLineSync()!);
      somaNotas += nota;
    }
    double media = somaNotas / 4;
    notasAlunos.add(media);
  }

  double mediaTurma = calcularMediaTurma(notasAlunos);
  print("Média aritmética de todos os alunos: $mediaTurma");
  print("Alunos que deverão fazer recuperação:");

  List<String> alunosRecuperacao = alunosParaRecuperacao(nomesAlunos, notasAlunos);
  for (String aluno in alunosRecuperacao) {
    print(aluno);
  }
}

double calcularMediaTurma(List<double> notasAlunos) {
  double somaMedias = 0;
  for (double nota in notasAlunos) {
    somaMedias += nota;
  }
  return somaMedias / notasAlunos.length;
}

List<String> alunosParaRecuperacao(List<String> nomesAlunos, List<double> notasAlunos) {
  List<String> alunosRecuperacao = [];
  for (int i = 0; i < nomesAlunos.length; i++) {
    if (notasAlunos[i] < 6) {
      alunosRecuperacao.add("Aluno: ${nomesAlunos[i]}, Média: ${notasAlunos[i]}");
    }
  }
  return alunosRecuperacao;
}