import 'dart:io';
void main() {
  List<Produto> produtos = [];
  List<Cliente> clientes = [];

  // Carrega informações sobre produtos.
  for (int i = 0; i < 3; i++) {
    stdout.write("Informe o número do produto ${i+1}: ");
    int numeroProduto = int.parse(stdin.readLineSync()!);

    stdout.write("Informe o preço do produto ${i+1} (entre R\$20 e R\$350): ");
    double precoProduto = double.parse(stdin.readLineSync()!);

    // Valida o preço do produto, em caso de erro reescreve a variavel.
    while (precoProduto < 20.0 || precoProduto > 350.0) {
      stdout.write("Preço fora do intervalo válido. Informe o preço novamente: ");
      precoProduto = double.parse(stdin.readLineSync()!);
    }
    produtos.add(Produto(numeroProduto, precoProduto));
  }

  // Carrega informações sobre os clientes.
  for (int i = 0; i < 3; i++) {
    stdout.write("Informe o NÚMERO do cliente ${i+1}: ");
    int numeroCliente = int.parse(stdin.readLineSync()!);

    stdout.write("Informe o nome do cliente ${i+1}: ");
    String nomeCliente = stdin.readLineSync()!;

    // pega o valor fornecido pelo usuario e já converte as letras maiusculas para minusculas caso existam maisculas.
    stdout.write("Informe o sexo do cliente ${i+1} (M/m ou F/f): ");
    String sexoCliente = stdin.readLineSync()!.toLowerCase();

    // Valida o sexo do cliente.
    while (sexoCliente != 'm' && sexoCliente != 'f') {
      stdout.write("Sexo inválido. Informe o sexo novamente (M/m ou F/f): ");
      sexoCliente = stdin.readLineSync()!.toLowerCase();
    }
    clientes.add(Cliente(numeroCliente, nomeCliente, sexoCliente));
  }

  // Carrega informações sobre a compra.
  stdout.write("Informe o NÚMERO do produto que o cliente fez a compra: ");
  int numeroProdutoCompra = int.parse(stdin.readLineSync()!);

  stdout.write("Informe o NÚMERO do cliente que fez a compra: ");
  int numeroClienteCompra = int.parse(stdin.readLineSync()!);

  stdout.write("Informe a quantidade comprada do produto pelo cliente: ");
  int quantidadeProdutoCompra = int.parse(stdin.readLineSync()!);

  // Encontra o produto e cliente correspondentes.
  // firstWhere é um método que é usado para encontrar o primeiro elemento em uma lista.
  Produto produtoCompra = produtos.firstWhere((produto) => produto.numeroProduto == numeroProdutoCompra);
  Cliente clienteCompra = clientes.firstWhere((cliente) => cliente.numeroCliente == numeroClienteCompra);

  // Cria a compra e calcular o valor total.
  Compra compra = Compra(numeroProdutoCompra, numeroClienteCompra, quantidadeProdutoCompra, produtoCompra, clienteCompra);
  compra.calcularValorTotal();

  print("O valor total da compra é: R\$ ${compra.valorTotal.toStringAsFixed(2)}");
}

class Produto {
  late int numeroProduto;
  late double precoProduto;

  Produto(this.numeroProduto, this.precoProduto);

  double calcularDesconto() {
    if (precoProduto > 100) {
      return precoProduto * 0.15; 
    } else {
      return precoProduto * 0.05; 
    }
  }
}

class Cliente {
  late int numeroCliente;
  late String nomeCliente;
  late String sexoCliente;

  Cliente(this.numeroCliente, this.nomeCliente, this.sexoCliente);

  double calcularDescontoAdicional () {
    if (sexoCliente == 'f') {
      return 0.05; 
    } else {
      return 0;
    }
  }
}

class Compra {
  late int numeroProduto;
  late int numeroCliente;
  late int quantidadeProduto;
  late double valorTotal;
  Produto produto;
  Cliente cliente;

  Compra(
    this.numeroProduto,
    this.numeroCliente,
    this.quantidadeProduto,
    this.produto,
    this.cliente,
  );

  void calcularValorTotal() {
    double desconto = produto.precoProduto - produto.calcularDesconto(); 
    double descontoAdicionalSexo = desconto * cliente.calcularDescontoAdicional();
    double precoFinal = desconto - descontoAdicionalSexo;
    valorTotal = precoFinal * quantidadeProduto;
  }
}