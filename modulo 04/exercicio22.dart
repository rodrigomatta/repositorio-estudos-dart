import 'dart:io';

void main() {
  //Matriz com os valores da tabela
  List<List<int>> tabelaRisco = [
    [9, 8, 7],
    [6, 5, 4],
    [3, 2, 1],
  ];

  stdout.write("Informe a sua idade: ");
  int? idade = int.parse(stdin.readLineSync()!);
  stdout.write("Informe o seu peso: ");
  double? peso = double.parse(stdin.readLineSync()!);

  // faixa de idade com base na entrada do usuário
  int faixaIdade;

  if (idade < 20) {
    faixaIdade = 0; 
  } else if (idade >= 20 && idade <= 50) {
    faixaIdade = 1; 
  } else {
    faixaIdade = 2;
  }

  // faixa de peso com base na entrada do usuário
  int faixaPeso;

  if (peso <= 60) {
    faixaPeso = 0; 
  } else if (peso > 60 && peso <= 90) {
    faixaPeso = 1; 
  } else {
    faixaPeso = 2; 
  }

  // faixas de idade e peso para determinar o grupo de risco
  int grupoDeRisco = tabelaRisco[faixaIdade][faixaPeso];
  print("Você se encaixa no grupo de risco $grupoDeRisco.");
}