import 'dart:io';
import 'dart:math';
void main() {
  List<List<int>> vendas = List.generate(12, (i) => List.generate(4, (j) => Random().nextInt(15001)));
  List<String> meses = [
    "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho",
    "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"
  ];

  print("\nMatriz 12 X 4 gerada:");
  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 4; j++) {
      stdout.write("${vendas[i][j]}\t");
    }
    print("");
  }

  // total vendido em cada mês
  print("\nTotal vendido em cada mês do ano: ");
  for (int i = 0; i < 12; i++) {
    double totalMensal = vendas[i].reduce((a, b) => a + b).toDouble();
    print("${meses[i]}: R\$ ${totalMensal.toStringAsFixed(2)}");
  }

  // total vendido em cada semana durante o ano
  print("\nTotal vendido em cada semana do ano: ");
  for (int j = 0; j < 4; j++) {
    double totalSemanal = 0.0;
    for (int i = 0; i < 12; i++) {
      totalSemanal += vendas[i][j].toDouble();
    }
    print("Semana ${j + 1}: R\$ ${totalSemanal.toStringAsFixed(2)}");
  }

  // total anual de vendas
  double totalAnual = vendas.expand((e) => e).reduce((a, b) => a + b).toDouble();
  print("\nTotal vendido pela loja no ano: ");
  print("Total Anual: R\$ ${totalAnual.toStringAsFixed(2)}");
}
