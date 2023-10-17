import 'dart:io';

void main() {
  stdout.write("Informe o preço do produto: ");
  final preco = double.parse(stdin.readLineSync()!);

  stdout.write("Informe o número da categoria (1 - limpeza, 2 - alimentação, 3 - vestuário): ");
  final categoria = int.parse(stdin.readLineSync()!);

  stdout.write("Informe a letra da situação (R - necessita de refrigeração, N - Não necessita de refrigeração): ");
  final situacao = stdin.readLineSync()!.toLowerCase();

  double aumento = 0.0, imposto = 0.0, calcImpost = 0.0; 
  String classificacao = "";

  if (preco <= 25) {
    if (categoria == 1) {
      aumento = preco * 0.05;
    } else if (categoria == 2) {
      aumento = preco * 0.08;
    } else {
      aumento = preco * 0.1;
    }
  } else {
    if (categoria == 1) {
      aumento = preco * 0.12;
    } else if (categoria == 2) {
      aumento = preco * 0.15;
    } else {
      aumento = preco * 0.18;
    }
    
    if (categoria == 2 || situacao == "r") {
      calcImpost = preco + aumento;
      imposto = calcImpost * 0.05;
    } else {
      calcImpost = preco + aumento;
      imposto = calcImpost * 0.08;
    }
  }

  final total = preco + aumento + imposto;

  if (total <= 50) {
    classificacao = "Barato";
  } else if (total < 120) {
    classificacao = "Normal";
  } else {
    classificacao = "Caro";
  }

  print("O valor do aumento será de R\$ ${aumento.toStringAsFixed(2)}, o valor do imposto será de R\$ ${imposto.toStringAsFixed(2)}, totalizando R\$ ${total.toStringAsFixed(2)}");
  print("A classificação de compra do produto é $classificacao");
}