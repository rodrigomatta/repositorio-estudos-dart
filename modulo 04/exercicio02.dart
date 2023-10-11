import 'dart:io';

void main() {
  stdout.write("Informe a nota 1: ");
  double? nota1 = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write("Informe a nota 2: ");
  double? nota2 = double.tryParse(stdin.readLineSync() ?? '');

  if (nota1 == null || nota2 == null) {
    print("Alguma das notas informadas não é válida.");
    return;
  }
  if (nota1 > 10) {
    nota1 /= 10;
  }
  if (nota2 > 10) {
    nota2 /= 10;
  }

  print(nota1);
  var media = (nota1 + nota2) / 2;
  print("A média é do aluno foi de $media.");

  if (media <= 4) {
    print("O aluno foi Reprovado");
  } else if (media > 4 && media < 7) {
    print("O aluno está de exame");
  } else {
    print("O aluno foi Aprovado");
  }
}