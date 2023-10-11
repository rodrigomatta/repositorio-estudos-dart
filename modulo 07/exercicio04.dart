import 'dart:io';

void main() {
  const int numAlunos = 15;
  const int numProvas = 5;

  List<List<double>> notasAlunos = List.generate(
      numAlunos, (index) => List<double>.filled(numProvas, 0));
  List<String> nomesAlunos = List<String>.filled(numAlunos, "");

  for (int i = 0; i < numAlunos; i++) {
    stdout.write("Digite o nome do aluno ${i + 1}: ");
    nomesAlunos[i] = stdin.readLineSync()!;
    for (int j = 0; j < numProvas; j++) {
      stdout.write("Digite a nota da prova ${j + 1} para ${nomesAlunos[i]}: ");
      notasAlunos[i][j] = double.parse(stdin.readLineSync()!);
    }
  }

  double mediaClasse = 0;
  for (int i = 0; i < numAlunos; i++) {
    double somaNotas = 0.0;
    for (int j = 0; j < numProvas; j++) {
      somaNotas += notasAlunos[i][j];
    }
    double mediaAluno = somaNotas / numProvas;
    mediaClasse += mediaAluno;

    String situacao;
    if (mediaAluno >= 7.0) {
      situacao = "Aprovado";
    } else if (mediaAluno < 4.0) {
      situacao = "Reprovado";
    } else {
      situacao = "Exame";
    }

    print("Aluno: ${nomesAlunos[i]}");
    print("Média das provas: $mediaAluno");
    print("Situação: $situacao");
    print("");
  }

  mediaClasse /= numAlunos;
  print("Média da classe: $mediaClasse");
}