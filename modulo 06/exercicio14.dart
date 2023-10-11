import 'dart:io';

void main() {
  List<String> nome = [];
  List<double> nota1 = []; 
  List<double> nota2 = [];
  List<double> media = [];
  List<String> situacao = [];
  String atual;
  double somaMedias = 0, porcAprovados = 0, porcExame = 0, porcReprovados = 0;

  for (int i = 0; i < 6; i++) {
    stdout.write("Digite o nome do ${i + 1}° aluno: ");
    String nomes = stdin.readLineSync()!.toLowerCase();
    nome.add(nomes);

    stdout.write("Digite a nota da 1ª prova de ${nome[i]} : ");
    double notas = double.parse(stdin.readLineSync()!);
    nota1.add(notas);

    stdout.write("Digite a nota da 2ª prova de ${nome[i]}: ");
    double notas2 = double.parse(stdin.readLineSync()!);
    nota2.add(notas2);

    double mediano = (nota1[i] + nota2[i]) / 2;
    media.add(mediano);

    if (media[i] >= 6) {
      atual = "Aprovado";
      situacao.add(atual);
      porcAprovados += 1;
    } else if (media[i] >= 4 && media[i] < 6) {
      atual = "Exame";
      situacao.add(atual);
      porcExame += 1;
    } else {
      atual = "Reprovado";
      situacao.add(atual);
      porcReprovados += 1;
    }

    somaMedias += media[i];
  }

  print("Relatório de notas");
  print("ALUNO | 1ª PROVA | 2ª PROVA | MÉDIA | SITUAÇÃO");
  for (int i = 0; i < 6; i++) {
    print("${nome[i]} | ${nota1[i].toStringAsFixed(2)} | ${nota2[i].toStringAsFixed(2)} | ${media[i].toStringAsFixed(2)} | ${situacao[i]}");
  }

  porcAprovados = (porcAprovados / 6) * 100;
  porcExame = (porcExame / 6) * 100;
  porcReprovados = (porcReprovados / 6) * 100;

  print("Média da classe = ${somaMedias / 6}");
  print("Percentual de alunos aprovados = ${porcAprovados.toStringAsFixed(2)}%");
  print("Percentual de alunos de exame = ${porcExame.toStringAsFixed(2)}%");
  print("Percentual de alunos reprovados = ${porcReprovados.toStringAsFixed(2)}%");
}