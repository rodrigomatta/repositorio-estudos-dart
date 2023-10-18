import 'classLivraria.dart';
import 'dart:io';

class Sacola {
  List<Livro> itens = [];

  bool adicionarItemPorId(int id, List<Livro> livros) {
    for (var livro in livros) {
      if (livro.id == id) {
        itens.add(livro);
        return true;
      }
    }
    return false;
  }

  bool adicionarItemPorNome(String nome, List<Livro> livros) {
    for (var livro in livros) {
      if (livro.titulo == nome) {
        itens.add(livro);
        return true;
      }
    }
    return false;
  }

  bool removerItem(int id, String nome) {
    for (var livro in itens) {
      if (livro.id == id || livro.titulo == nome) {
        itens.remove(livro);
        return true;
      }
    }
    return false;
  }

  void exibirCarrinho() {
    if (itens.isEmpty) {
      print("O carrinho está vazio.");
    } else {
      print("Itens no carrinho:");
      for (var livro in itens) {
        print("${livro.id}: ${livro.titulo}");
      }
    }
  }
}

void main() {
  List<Livro> livros = Livro.lerLivrosJson('livraria.json');
  Sacola sacola = Sacola();

  print("REMOVER LIVROS DO CARRINHO: ");

  print("Digite o(s) ID(s) ou o(s) nome(s) do(s) livro(s) que deseja remover do carrinho separados por vírgula:\n");
  var idNome = stdin.readLineSync() ?? "";

  List<String> idsNomes = idNome.split(',');
  bool livroRemovido = false;

  for (var idNome in idsNomes) {
    // Rastrear se o livro foi encontrado.
    bool encontrado = false;

    if (int.tryParse(idNome) != null) {
      // Se for um ID, vai tentar remover pelo ID.
      int id = int.parse(idNome);
      if (sacola.removerItem(id, '')) {
        livroRemovido = true;
        encontrado = true;
      }
    } else {
      // Se não for um ID, vai tentar remover pelo nome.
      if (sacola.removerItem(0, idNome)) {
        livroRemovido = true;
        encontrado = true;
      }
    }

    if (!encontrado) {
      print("Livro não encontrado: $idNome");
    }
  }

  // Exibe o carrinho após as operações.
  sacola.exibirCarrinho();

  // Verifica se algum livro foi removido.
  if (livroRemovido) {
    print("Livro(s) removido(s) do carrinho.");
  } else {
    print("Nenhum livro foi encontrado ou removido.");
  }
}