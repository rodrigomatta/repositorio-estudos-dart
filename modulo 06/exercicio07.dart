import 'dart:io';
void main() {
  List<int> listaNumeros = [];
  int quantidadeNegativos = 0;
  int somaPositivos = 0;
  
  for (int i = 0; i < 10; i++) {
    stdout.write("Digite o ${i+1} número real: ");
    int reais = int.parse(stdin.readLineSync()!);
    listaNumeros.add(reais);
  }
  
  for (int i = 0; i < 10; i++) {
    if (listaNumeros[i] < 0) {
      quantidadeNegativos++;
    } else {
      somaPositivos += listaNumeros[i];
    }
  }
  
  print("a quantidade de números negativos é de $quantidadeNegativos!");
  print("A soma dos números positivos é de $somaPositivos!");
}