import 'dart:io';

void main() {
  List<int> lista1 = [];
  List<int> lista2 = [];
  List<int> vetorResultadoSoma = [];
  List<int> vetorResultadoDivisao = [];

  for (int i = 0; i < 10; i++) {
    stdout.write("Digite o número ${i + 1} da primeira lista: ");
    int l1 = int.parse(stdin.readLineSync()!);
    lista1.add(l1);
  }

  for (int i = 0; i < 5; i++) {
    stdout.write("Digite o número ${i + 1} da segunda lista: ");
    int l2 = int.parse(stdin.readLineSync()!);
    lista2.add(l2);
  }

  for (int i = 0; i < lista1.length; i++) {
    int divisao = 0;

    // Verifica se o elemento atual de 'lista1' é par.
    if (lista1[i] % 2 == 0) {
      // Se for par, calcula a soma desse elemento com todos os elementos de 'lista2'.
      // O resultado é armazenado na variável 'soma'.
      int soma = lista1[i] + lista2.reduce((a, b) => a + b);
      vetorResultadoSoma.add(soma);
    } else {
      // Calcula quantos elementos em 'lista2' são divisíveis pelo elemento atual de 'lista1'
      // e armazena a contagem na variável 'divisao'
      divisao = lista2.where((element) => lista1[i] % element == 0).length;
      vetorResultadoDivisao.add(divisao);
    }
  }

  print("\nLista resultante da Soma:");
  for (int i = 0; i < vetorResultadoSoma.length; i++) {
    stdout.write("${vetorResultadoSoma[i]} ");
  }
  print("");
  print("\nLista resultante das divisões:");
  for (int i = 0; i < vetorResultadoDivisao.length; i++) {
    stdout.write("${vetorResultadoDivisao[i]} ");
  }
  print("");
}
