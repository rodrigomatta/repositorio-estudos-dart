import 'dart:io';

void main() {
  List<int> codigosProdutos = [];
  List<int> estoqueProdutos = [];

  for (int i = 0; i < 10; i++) {
    stdout.write("Informe o código do produto ${i + 1}: ");
    int codigo = int.parse(stdin.readLineSync()!);
    codigosProdutos.add(codigo);

    stdout.write("Informe o estoque do produto ${i + 1}: ");
    int estoque = int.parse(stdin.readLineSync()!);
    estoqueProdutos.add(estoque);
  }
  print(codigosProdutos);

  while (true) {
    stdout.write("Informe o código do cliente (ou número negativo para sair): ");
    int codigoCliente = int.parse(stdin.readLineSync()!);

    if (codigoCliente <= -1) {
      break;
    }

    stdout.write("Informe o código do produto desejado: ");
    int codigoProdutoDesejado = int.parse(stdin.readLineSync()!);
    stdout.write("Informe a quantidade desejada: ");
    int quantidadeDesejada = int.parse(stdin.readLineSync()!);

    int indiceProduto = codigosProdutos.indexOf(codigoProdutoDesejado);

    if (indiceProduto <= -1) {
      print("Código inexistente.");
    } else if (quantidadeDesejada > estoqueProdutos[indiceProduto]) {
      print("Não temos estoque suficiente desta mercadoria.");
    } else {
      estoqueProdutos[indiceProduto] -= quantidadeDesejada;
      print("Pedido atendido. Obrigado e volte sempre!");
    }
  }

  print("Códigos dos produtos e estoques atualizados:");
  for (int i = 0; i < 10; i++) {
    print("Código do produto ${i + 1}: ${codigosProdutos[i]}, Estoque disponivel: ${estoqueProdutos[i]}");
  }
}