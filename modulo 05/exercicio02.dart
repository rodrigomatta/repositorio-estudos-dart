void main() {
  double precoInicial = 5.0,
      precoFinal = 1.0,
      incremento = 0.5,
      despesas = 200.0;
  int ingressosVendidosInicial = 120,
      aumentoIngressos = 26,
      ingressosVendidos = ingressosVendidosInicial;
  double precoIngresso = precoInicial,
      lucroMaximo = 0.0,
      precoDoIngressoMaximo = precoInicial;
  int ingressosVendidosMaximo = ingressosVendidosInicial;

  print("Preço do Ingresso | Ingressos Vendidos | Lucro Esperado");
  print("-------------------------------------------------------");

  while (precoIngresso >= precoFinal) {
    double receita = precoIngresso * ingressosVendidos;
    double lucro = receita - despesas;

    print("   ${precoIngresso.toStringAsFixed(2)}   |   $ingressosVendidos  |   ${lucro.toStringAsFixed(2)}   ");

    if (lucro > lucroMaximo) {
      lucroMaximo = lucro;
      precoDoIngressoMaximo = precoIngresso;
      ingressosVendidosMaximo = ingressosVendidos;
    }

    precoIngresso -= incremento;
    ingressosVendidos += aumentoIngressos;
  }

  print("-------------------------------------------------------");
  print("Lucro Máximo Esperado: R\$ $lucroMaximo");
  print("Preço do Ingresso para Lucro Máximo: R\$ $precoDoIngressoMaximo");
  print("Quantidade de Ingressos Vendidos para Lucro Máximo: R\$ $ingressosVendidosMaximo");
}