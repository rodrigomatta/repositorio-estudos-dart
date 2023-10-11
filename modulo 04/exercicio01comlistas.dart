import 'dart:io';

void main() {
  List<double> notas = [];

  for (int i = 1; i <= 4; i++) {
    stdout.write("Informe a nota $i:");
    double? nota = double.tryParse(stdin.readLineSync() ?? '');

    if (nota == null) {
      print("Nota inválida. Por favor, insira um valor válido.");
      return;
    } else if (nota > 10) {
      nota = nota / 10; // Converte a nota para um valor entre 0 e 10
    }
    notas.add(nota);
  }

  double soma = 0;
  for (double nota in notas) {
    soma += nota;
  }
  double media = soma / 4;
  print("A média do aluno foi de $media");

  if (media >= 7) {
    print("O aluno foi aprovado");
  } else {
    print("O aluno foi reprovado");
  }
}