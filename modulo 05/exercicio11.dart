import 'dart:io';
void main() {
  stdout.write("Informe o Valor do Carro: ");
  double valorCarro = double.parse(stdin.readLineSync()!);

  //Calculo do valor a vista
  double precoAVista = valorCarro * 0.8;
  //Opções de parcelamento em uma lista
  List<int> parcelas = [6, 12, 18, 24, 30, 36, 42, 48, 54, 60];

  // Faz o calculo e Imprime a tabela na sequencia: 
  print("Tabela de Preços:");
  print("| Quantidade de Parcelas | Preço Final | Valor da Parcela |");
  for (int numParcelas in parcelas) {
    double percentualAcrescimo = numParcelas * 3 / 100;
    double precoFinal = valorCarro * (1 + percentualAcrescimo);
    double valorParcela = precoFinal / numParcelas;
    print("| $numParcelas vezes             | R\$ ${precoFinal.toStringAsFixed(2)}   | R\$ ${valorParcela.toStringAsFixed(2)}         |");
  }
  // Preço à vista fora do laço
  print("| À vista              | R\$ ${precoAVista.toStringAsFixed(2)}   |");
}