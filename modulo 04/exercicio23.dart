import 'dart:io';

void main() {
  stdout.write("Informe o código do produto comprado: ");
  int cod = int.parse(stdin.readLineSync()!);
  stdout.write("Informe a quantidade do produto comprada: ");
  int quant = int.parse(stdin.readLineSync()!);

  double unitPrice;
  double discountRate;

  if (cod >= 1 && cod <= 10) {
    unitPrice = 10;
  } else if (cod >= 11 && cod <= 20) {
    unitPrice = 15;
  } else if (cod >= 21 && cod <= 30) {
    unitPrice = 20;
  } else if (cod >= 31 && cod <= 40) {
    unitPrice = 30;
  } else {
    print("Código inválido fornecido");
    return;
  }

  if (quant <= 0) {
    print("Quantidade inválida fornecida");
    return;
  }

  double totalWithoutDiscount = quant * unitPrice;
  if (totalWithoutDiscount <= 250) {
    discountRate = 0.05;
  } else if (totalWithoutDiscount > 250 && totalWithoutDiscount <= 500) {
    discountRate = 0.1;
  } else {
    discountRate = 0.15;
  }

  double discountAmount = totalWithoutDiscount * discountRate;
  double totalWithDiscount = totalWithoutDiscount - discountAmount;

  print("O preço unitário do seu produto é de ${unitPrice.toStringAsFixed(2)} reais");
  print("O preço total da nota é de R\$ ${totalWithoutDiscount.toStringAsFixed(2)}, o valor do desconto é de R\$ ${discountAmount.toStringAsFixed(2)}");
  print("O preço da nota com desconto é de R\$ ${totalWithDiscount.toStringAsFixed(2)}");
}