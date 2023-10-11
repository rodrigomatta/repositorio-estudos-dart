import 'dart:io';

void main() {
  List<String> nome = [];
  List<double> nota = [];
  double somaNotas = 0.0;
  double media;

  for (int i = 0; i < 8; i++) {
    stdout.write("Digite o nome do ${i + 1}° aluno: ");
    String nomed = stdin.readLineSync()!.toLowerCase();
    nome.add(nomed);
    
    stdout.write("Digite a nota do ${nome[i]} (no formato 7.0 em vez de 70): ");
    double not = double.parse(stdin.readLineSync()!);
    nota.add(not);
    somaNotas += nota[i];
  }

  print("Relatório de notas");
  print("Aluno  --  Nota");
  
  for (int i = 0; i < 8; i++) {
    print("${nome[i]}  --  ${nota[i]}");
  }

  media = somaNotas / 8;
  print("A média da classe é de ${media.toStringAsFixed(2)}");
}