import 'dart:io';
void main() {
  double lucroTotal = 0;
  int i = 0, lucroSuperior1000 = 0;
  int lucroInferior200 = 0;

  while (true) {
    i++;
    stdout.write("Digite o tipo de ação (letra de A até Z) (ou 'F' para finalizar): ");
    String tipoAcao = stdin.readLineSync()!.toLowerCase();

    if (tipoAcao == 'f') {
      break;
    } else if (tipoAcao.length > 1) {
      print("Caracte errado fornecido!");
      break;
    }

    stdout.write("Digite o preço de compra da ação $i: ");
    double precoCompra = double.parse(stdin.readLineSync()!);
    stdout.write("Digite o preço de venda da ação $i: ");
    double precoVenda = double.parse(stdin.readLineSync()!);
    double lucro = precoVenda - precoCompra;
    lucroTotal += lucro;

    if (lucro > 1000) {
      lucroSuperior1000++;
    } else if (lucro < 200) {
      lucroInferior200++;
    }

    print("O lucro da ação $i foi de R\$ ${lucro.toStringAsFixed(2)}");
  }

  print("Quantidade de ações com lucro superior a R\$ 1000 foram de ${lucroSuperior1000.toStringAsFixed(2)}");
  print("Quantidade de ações com lucro inferior a R\$ 200 foram de ${lucroInferior200.toStringAsFixed(2)}");
  print("Lucro total da empresa foi de R\$ ${lucroTotal.toStringAsFixed(2)}");
}