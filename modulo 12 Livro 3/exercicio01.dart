import 'dart:io';
import 'dart:math';
void main() {
  List<Carro> carros = [];

  stdout.write("Informe o ano atual: ");
  final anoAtual = int.parse(stdin.readLineSync()!);

  // Solicita ao usuário informações sobre 5 carros e cria objetos Carro para cada um deles
  for (int i = 0; i < 5; i++) {
    stdout.write("Informe o ano de fabricação do carro ${i + 1}: ");
    final anoFabricacao = int.parse(stdin.readLineSync()!);

    final carro = Carro(anoFabricacao);
    carros.add(carro);
  }

  double totalImpostos = 0;
  int carrosNaoPagamImpostos = 0;

  // Calcula o imposto para cada carro
  for (final carro in carros) {
    final imposto = carro.calcularImposto(anoAtual);
    totalImpostos += imposto;

    if (imposto == 0) {
      carrosNaoPagamImpostos++;
    }
  }

  print("\nImpostos a serem pagos por cada carro:");
  for (final carro in carros) {
    final imposto = carro.calcularImposto(anoAtual);
    print("Placa: ${carro.placa}, Ano de Fabricação: ${carro.anoFabricacao}, Imposto: R\$ ${imposto.toStringAsFixed(2)}");
  }

  print("\nTotal de Impostos: R\$ ${totalImpostos.toStringAsFixed(2)}");
  print("Quantidade de Carros que Não Pagam Impostos: $carrosNaoPagamImpostos");
}

// Classe Carro
class Carro {
  final int anoFabricacao;
  final String placa;

  // Construtor recebe o ano de fabricação e gera uma placa aleatória
  //: é usado para inicializar membros da classe
  Carro(this.anoFabricacao) : placa = gerarPlaca();

  // Método para calcular o imposto com base no ano atual
  double calcularImposto(int anoAtual) {
    int tempoUso = anoAtual - anoFabricacao;
    if (tempoUso <= 0) {
      return 500;
    } else if (tempoUso >= 9) {
      return 0;
    } else {
      double imposto = 500 - (tempoUso * 100);
      return imposto.clamp(100, 500).toDouble();
    }
  }

  // Método estático para gerar uma placa aleatória
  static String gerarPlaca() {
    String letras = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    String numeros = '123456789';
    String placa = '';

    for (int i = 0; i < 3; i++) {
      int index = Random().nextInt(letras.length);
      placa += letras[index];
    }

    for (int i = 0; i < 4; i++) {
      int index = Random().nextInt(numeros.length);
      placa += numeros[index];
    }
    return placa;
  }
}