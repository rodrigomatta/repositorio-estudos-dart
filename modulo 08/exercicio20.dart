import 'dart:io';
void main() {
  var resultados = calcularEstatisticas();
  
  print("Média de salário: ${resultados[0]}");
  print("Média de número de filhos: ${resultados[1]}");
  print("Maior salário: ${resultados[2]}");
  print("Percentual de pessoas com salário inferior a R\$ 380,00: ${resultados[3]}%");
}

List<double> calcularEstatisticas() {
  double somaSalario = 0, somaFilhos = 0, maiorSalario = 0;
  int pessoasComSalarioInferior = 0, totalPessoas = 0;
  
  while (true) {
    stdout.write("Digite o salário (ou -1 para encerrar): ");
    double salario = double.parse(stdin.readLineSync()!);
    
    if (salario == -1) {
      break;
    }
    
    stdout.write("Digite o número de filhos: ");
    int numeroFilhos = int.parse(stdin.readLineSync()!);
    
    somaSalario += salario;
    somaFilhos += numeroFilhos;

    if (salario > maiorSalario) {
      maiorSalario = salario;
    }
    
    if (salario < 380) {
      pessoasComSalarioInferior++;
    }
    totalPessoas++;
  }
  
  double mediaSalario = somaSalario / totalPessoas;
  double mediaFilhos = somaFilhos / totalPessoas;
  double percentualSalarioInferior = (pessoasComSalarioInferior / totalPessoas) * 100;
  
  return [mediaSalario, mediaFilhos, maiorSalario, percentualSalarioInferior];
}
