import 'dart:io';

List<int> idades = [];
List<String> sexos = [];
List<double> salarios = [];
List<int> numFilhos = [];

void main() {
  // Chama a função para armazenar os dados.
  armazenarDados();

  // Calcula a menor idade na lista de idades.
  int menorIdade = calcMenorIdade(idades);

  // Calcula a maior idade na lista de idades.
  int maiorIdade = calcMaiorIdade(idades);

  // Calcula a média dos salários na lista de salários.
  double mediaSalario = calcSalarios(salarios) / idades.length;

  // Calcula a quantidade de mulheres com 3 filhos e salário até R$ 500.
  int mulheresComTresFilhosAte500 = calcSexos(sexos, numFilhos, salarios);

  print("A Média do salário é: R\$ ${mediaSalario.toStringAsFixed(2)}");
  print("A Menor idade é: $menorIdade");
  print("A Maior idade é: $maiorIdade");
  print("A quantidade de mulheres com 3 filhos que recebem até R\$ 500,00 é: $mulheresComTresFilhosAte500");
}

void armazenarDados() {
  //solicita e armazenar os dados.
  for (int i = 0; i < 2; i++) {
    stdout.write("Informe a idade da pessoa ${i + 1}: ");
    idades.add(int.parse(stdin.readLineSync()!));

    stdout.write("Informe o sexo da pessoa ${i + 1} (M/F): ");
    sexos.add(stdin.readLineSync()?.toLowerCase() ?? "");

    stdout.write("Informe o salário da pessoa ${i + 1}: ");
    salarios.add(double.parse(stdin.readLineSync()!));

    stdout.write("Informe o número de filhos da pessoa ${i + 1}: ");
    numFilhos.add(int.parse(stdin.readLineSync()!));
  }
}

int calcMenorIdade(List<int> idades) {
  // Calcular a menor idade na lista de idades.
  int menorIdade = idades[0];

  for (int i = 1; i < idades.length; i++) {
    if (idades[i] < menorIdade) {
      menorIdade = idades[i];
    }
  }

  return menorIdade;
}

int calcMaiorIdade(List<int> idades) {
  // Calcular a maior idade na lista de idades.
  int maiorIdade = idades[0];

  for (int i = 1; i < idades.length; i++) {
    if (idades[i] > maiorIdade) {
      maiorIdade = idades[i];
    }
  }

  return maiorIdade;
}

int calcSexos(List<String> sexos, List<int> numFilhos, List<double> salarios) {
  // Calcula a quantidade de mulheres com 3 filhos e salário até R$ 500.
  int mulheresComTresFilhosAte500 = 0;

  for (int i = 0; i < sexos.length; i++) {
    if (sexos[i] == 'f' && numFilhos[i] == 3 && salarios[i] <= 500) {
      mulheresComTresFilhosAte500++;
    }
  }

  return mulheresComTresFilhosAte500;
}

double calcSalarios(List<double> salarios) {
  // Calcula a soma dos salários na lista de salários.
  double somaSalarios = 0;

  for (int i = 0; i < salarios.length; i++) {
    somaSalarios += salarios[i];
  }

  return somaSalarios;
}