import 'dart:io';
import 'dart:math';
void main() {
  const int numAlunos = 8;
  const int numDisciplinas = 5;
  List<int> idades = List.generate(8, (_) => Random().nextInt(31));
  List<int> codigosDisciplinas = List.generate(5, (_) => Random().nextInt(21));
  List<List<int>> quantidadeProvas = List.generate(8, (i) => List.generate(5, (j) => Random().nextInt(21)));

  // Imprime a matriz de quantidade de provas por disciplina.
  print("\nDisplina 5 X Provas 8 gerada:");
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write("${quantidadeProvas[i][j]}\t");
    }
    print("");
  }

  // Imprime as a lista de idades dos alunos.
  print("");
  for (int i = 0; i < idades.length; i++) {
    print("A idade do aluno ${i + 1} é ${idades[i]}");
  }

  // Imprime a lista de códigos das disciplinas.
  print("");
  for (int i = 0; i < codigosDisciplinas.length; i++) {
    print("O Codigo da disciplina ${i + 1} é ${codigosDisciplinas[i]}");
  }
  print("");

  // Usuário digita o código da disciplina desejada.
  stdout.write("Digite o código da disciplina para verificar os alunos: ");
  int? disciplinaDesejada = int.tryParse(stdin.readLineSync()!);

  // Verifica se o código da disciplina é válido.
  if (disciplinaDesejada != null && codigosDisciplinas.contains(disciplinaDesejada)) {
    int contadorAlunos = 0;

    // Verifica os alunos que têm idade entre 18 e 25 anos e fizeram mais de duas provas na disciplina desejada.
    for (int i = 0; i < numAlunos; i++) {
      int indexDisciplina = codigosDisciplinas.indexOf(disciplinaDesejada);
      if (idades[i] >= 18 &&
          idades[i] <= 25 &&
          quantidadeProvas[i][indexDisciplina] > 2) {
        contadorAlunos++;
      }
    }

    // Imprime o resultado da contagem de alunos que atendem aos critérios.
    if (contadorAlunos > 0) {
      print("\nQuantidade de alunos com idade entre 18 e 25 anos que fizeram mais de duas provas na disciplina $disciplinaDesejada: $contadorAlunos");
    } else {
      print("\nNenhum aluno com idade entre 18 e 25 anos fez mais de duas provas na disciplina $disciplinaDesejada.");
    }

    // Lista alunos que fizeram menos de três provas na disciplina desejada.
    print("\nListagem de alunos que fizeram menos de três provas na disciplina $disciplinaDesejada:");

    bool algumAlunoEncontrado = false;

    for (int i = 0; i < numAlunos; i++) {
      int indexDisciplina = codigosDisciplinas.indexOf(disciplinaDesejada);
      if (quantidadeProvas[i][indexDisciplina] < 3) {
        algumAlunoEncontrado = true;
        print("O aluno ${i + 1} fez menos de três provas na disciplina $disciplinaDesejada");
      }
    }

    // Verifica se algum aluno foi encontrado.
    if (!algumAlunoEncontrado) {
      print("todos os alunos fizeram as provas!");
    }

    // Calcula a média de idade dos alunos que não fizeram nenhuma prova em alguma disciplina.
    double somaIdades = 0;
    int alunosSemProvas = 0;

    for (int i = 0; i < numAlunos; i++) {
      bool fezProva = false;
      for (int j = 0; j < numDisciplinas; j++) {
        if (quantidadeProvas[i][j] > 0) {
          fezProva = true;
          break;
        }
      }
      if (fezProva != true) {
        somaIdades += idades[i];
        alunosSemProvas++;
      }
    }

    // Imprime a média de idade dos alunos que não fizeram nenhuma prova.
    if (alunosSemProvas > 0) {
      double mediaIdades = somaIdades / alunosSemProvas;
      print("\nMédia de idade dos alunos que não fizeram nenhuma prova em alguma disciplina: $mediaIdades");
    } else {
      print("\nTodos os alunos fizeram pelo menos uma prova em todas as disciplinas.");
    }

  } else {
    print("Código de disciplina não é valido.");
  }
}