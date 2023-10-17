import 'dart:io';

void main() {
  stdout.write("Informe a nota 1: ");
  double? nota1 = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write("Informe a nota 2: ");
  double? nota2 = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write("Informe a nota 3: ");
  double? nota3 = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write("Informe a nota 4: ");
  double? nota4 = double.tryParse(stdin.readLineSync() ?? '');

  // Verifica se alguma das notas não é válida (nula)
  if (nota1 == null || nota2 == null || nota3 == null || nota4 == null) {
    print("Alguma das notas informadas não é válida.");
    return;
  }

  if (nota1 > 10) {
    nota1 = nota1 / 10;
  }
  if (nota2 > 10) {
    nota2 = nota2 / 10;
  }
  if (nota3 > 10) {
    nota3 = nota3 / 10;
  }
  if (nota4 > 10) {
    nota4 = nota4 / 10;
  }

  // Média das notas
  double media = (nota1 + nota2 + nota3 + nota4) / 4;
  print("A média do aluno foi de $media.");

  // Verifica se o aluno foi aprovado ou reprovado com base na média
  if (media >= 7) {
    print("O aluno foi aprovado");
  } else {
    print("O aluno foi reprovado");
  }
}