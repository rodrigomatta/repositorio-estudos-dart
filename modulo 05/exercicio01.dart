import 'dart:io';

void main() {
  // Criando uma matriz de 5 elementos, onde cada elemento é uma lista vazia.
  List<List<int>> matriz = List.generate(5, (_) => []);

  for (int i = 0; i < 5; i++) {
    // Solicita ao usuário inserir 4 valores separados por espaços para cada lista.
    stdout.write("Digite os 4 valores da lista ${i + 1} (4 números separados por espaços): ");
    
    // Lê a entrada do usuário.
    String? input = stdin.readLineSync();

    if (input != null) {
      // Divide a entrada em uma lista de inteiros.
      List<int> lista = input.split(' ').map((e) => int.tryParse(e) ?? 0).toList();

      if (lista.length == 4) {
        // Se a lista tiver exatamente 4 valores, armazena na matriz.
        matriz[i] = lista;
      } else {
        // Caso contrário, exibe uma mensagem de erro e decrementa 'i' para reentrar os valores.
        print("Erro: A lista deve conter exatamente 4 valores.");
        i--; // Volte para a mesma lista na próxima iteração
      }
    }
  }

  // Após a entrada de dados ser concluída, imprime as listas.
  print("\nOs valores informados na entrada para cada lista foram:");
  for (int i = 0; i < 5; i++) {
    // Imprime a lista original.
    print("Lista ${i + 1} (Original): ${matriz[i]}");
    
    // Classifica a lista em ordem crescente e a imprime.
    matriz[i].sort();
    print("Lista ${i + 1} (Crescente): ${matriz[i]}");
    
    // Cria uma cópia da lista e a classifica em ordem decrescente, em seguida a imprime.
    List<int> listaDecrescente = List.from(matriz[i]);
    listaDecrescente.sort((a, b) => b.compareTo(a));
    print("Lista ${i + 1} (Decrescente): $listaDecrescente");
  }
}