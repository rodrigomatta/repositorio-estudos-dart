import 'dart:io';
void main() {
  List<double> temperaturas = [];
  List<String> meses = ["janeiro", "fevereiro", "março", "abril", "maio", "junho", "julho", "agosto", "setembro", "outubro", "novembro", "dezembro"];

  for (int i = 0; i < 12; i++) {
    stdout.write("Digite a temperatura média de ${meses[i]}: ");
    double temperatura = double.parse(stdin.readLineSync()!);
    temperaturas.add(temperatura);
  }

  int mesMenorTemperatura = mesMenorTemp(temperaturas);
  int mesMaiorTemperatura = mesMaiorTemp(temperaturas);
  double menorTemperatura = temperaturas[mesMenorTemperatura];
  double maiorTemperatura = temperaturas[mesMaiorTemperatura];

  print("A menor temperatura do ano foi ${menorTemperatura}°C em ${meses[mesMenorTemperatura]}.");
  print("A maior temperatura do ano foi ${maiorTemperatura}°C em ${meses[mesMaiorTemperatura]}.");
}

int mesMenorTemp(List<double> temperaturas) {
  double menorTemperatura = temperaturas[0];
  int mesMenorTemperatura = 0;

  for (int i = 1; i < temperaturas.length; i++) {
    if (temperaturas[i] < menorTemperatura) {
      menorTemperatura = temperaturas[i];
      mesMenorTemperatura = i;
    }
  }
  //retorna o indice da menor temperatura
  return mesMenorTemperatura;
}

int mesMaiorTemp(List<double> temperaturas) {
  double maiorTemperatura = temperaturas[0];
  int mesMaiorTemperatura = 0;

  for (int i = 1; i < temperaturas.length; i++) {
    if (temperaturas[i] > maiorTemperatura) {
      maiorTemperatura = temperaturas[i];
      mesMaiorTemperatura = i;
    }
  }
  //retorna o indice da maior temperatura
  return mesMaiorTemperatura;
}