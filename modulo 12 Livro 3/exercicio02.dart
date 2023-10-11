import 'dart:io';
void main() {
  stdout.write("Digite o nome da pessoa: ");
  String nome = stdin.readLineSync()!.toLowerCase();

  stdout.write("Digite a idade da pessoa: ");
  double idade = double.parse(stdin.readLineSync()!);

  final pessoa = Pessoa(nome, idade);
  final idadeEmMeses = pessoa.idadeEmMeses();
  final idadeEm2050 = pessoa.idadeEm2050();

  print("${pessoa.nome} tem ${pessoa.idade.toStringAsFixed(0)} anos.");
  print("Idade em meses: ${idadeEmMeses.toStringAsFixed(0)} meses.");
  print("Idade em 2050: ${idadeEm2050.toStringAsFixed(0)} anos.");
}

class Pessoa {
  late String nome;
  late double idade;

  Pessoa(this.nome, this.idade);

  double idadeEmMeses() {
    return idade * 12;
  }

  double idadeEm2050() {
    final anoAtual = DateTime.now().year;
    final ano2050 = 2050;
    final idade2050 = idade + (ano2050 - anoAtual);
    return idade2050;
  }
}
