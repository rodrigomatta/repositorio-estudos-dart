import 'dart:io';
void main() {
  List<String> nomes = [];
  List<double> medias = [];
  String nomeAlunoMaiorMedia = "";
  double notaExame, maiorMedia = 0;
  int aprovados = 0;

  print("Informe os nomes e as médias de 7 alunos (valor nota de 1 até 10):");

  for (int i = 0; i < 7; i++) {
    stdout.write("Nome do aluno ${i + 1}: ");
    String nome = stdin.readLineSync()!.toLowerCase();
    nomes.add(nome);
    stdout.write("Média do aluno ${i + 1}: ");
    double media = double.parse(stdin.readLineSync()!);
    medias.add(media);

    if (medias[i] > maiorMedia) {
      maiorMedia = medias[i];
      nomeAlunoMaiorMedia = nomes[i];
    }

    if (medias[i] < 7) {
      notaExame = 10 - medias[i];
      print("O aluno ${nomes[i]} precisa tirar ${notaExame.toStringAsFixed(0)} na prova de exame para ser aprovado.");
    } else {
      aprovados++;
    }
  }

  print("O aluno com a maior média é $nomeAlunoMaiorMedia com a média de $maiorMedia");
  print("A quantidade dos 7 alunos que foram aprovados é de $aprovados");
}
