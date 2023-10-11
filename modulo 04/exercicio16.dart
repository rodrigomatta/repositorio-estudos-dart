import 'dart:io';

void main() {
  stdout.write("Informe o valor atual do produto: ");
  double? valorProduto = double.tryParse(stdin.readLineSync() ?? '');
  
  if (valorProduto == null) {
    print("Valor inválido fornescido.");
    return;
    
  } else if (valorProduto < 30) {
    print("Você não obteve direitos a descontos, o valor do produto permanesce o mesmo valor de RS $valorProduto");

  } else if (valorProduto >= 30 && valorProduto < 100) {
    double valorNovo = valorProduto-(valorProduto*0.1);
    double desconto = valorProduto*0.1;
    print("Você obteve direito a desconto de RS $desconto no valor do produto, o valor produto será de RS $valorNovo");

  } else {
    double valorNovo = valorProduto-(valorProduto*0.15);
    double desconto = valorProduto*0.15;
    print("Você obteve direito a desconto de RS $desconto no valor do produto, o valor produto será de RS $valorNovo");
  }
}