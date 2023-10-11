import 'dart:io';

void main() {
  stdout.write("Informe o valor do custo de fábrica do veículo: ");
  double? CustoFabrica = double.tryParse(stdin.readLineSync() ?? '');
  
  if (CustoFabrica == null) {
    print("Valor de saldo inválido.");
    return;
  } else if (CustoFabrica < 12000) {
    double CalcuDistrib = CustoFabrica * 0.05;
    double ValorSemCustos = CustoFabrica-CalcuDistrib;
    print("Do valor total de Custos, RS $ValorSemCustos é o valor total sem juros, RS $CalcuDistrib é referente ao valor do distribuidor e os ipostos são isentos!");
  } else if (CustoFabrica >= 12000 && CustoFabrica < 25000) {
    double CalcuDistrib = CustoFabrica * 0.1;
    double CalcuImposto = CustoFabrica * 0.15;
    double ValorSemCustos = CustoFabrica-CalcuDistrib-CalcuImposto;
    print("Do valor total de Custos, RS $ValorSemCustos é o valor total sem juros, $CalcuDistrib é referente ao valor do distribuidor e RS $CalcuImposto é referente aos impostos cobrados!");
  } else {
    double CalcuDistrib = CustoFabrica * 0.15;
    double CalcuImposto = CustoFabrica * 0.2;
    double ValorSemCustos = CustoFabrica-CalcuDistrib-CalcuImposto;
    print("valor total de Custos, RS $ValorSemCustos é o valor total sem juros, $CalcuDistrib é referente ao valor do distribuidor e RS $CalcuImposto é referente aos impostos cobrados!");
  }
}