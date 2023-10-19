import 'classLivraria.dart';

class Sacola {
  List<Livro> itens = [];

  bool adicionarItemPorId(int id, List<Livro> livros) {
    // Verifica se o livro já está na sacola antes de adicionar.
    if (itens.any((livro) => livro.id == id)) {
      return false; // Livro já está na sacola.
    }

    for (var livro in livros) {
      if (livro.id == id) {
        itens.add(livro);
        return true;
      }
    }
    return false; // Livro não encontrado na lista de livros.
  }

  bool adicionarItemPorNome(String nome, List<Livro> livros) {
    if (itens.any((livro) => livro.titulo == nome)) {
      return false;
    }

    for (var livro in livros) {
      if (livro.titulo == nome) {
        itens.add(livro);
        return true;
      }
    }
    return false;
  }

  void listarItens() {
    //isNotEmpty verifica se a lista itens não está vazia.
    if (itens.isNotEmpty) {
      for (var item in itens) {
        print("----------------------------");
        print("Identificação Livro: ${item.id}");
        print("Título: ${item.titulo}");
        print("Preço: R\$ ${item.preco}");
        print("Estrelas: ${item.estrelas}");
        print("Autor: ${item.autor}");
        print("Favorito: ${item.eFavorito}");
        print("----------------------------");
      }
    } else {
      print("\nNenhum Item disponivel na sacola!");
    }
  }

  void listarItensComprados() {
    for (var item in itens) {
      print("Título: ${item.titulo}");
      print("Preço: R\$ ${item.preco}");
      print("Autor: ${item.autor}");
      print("--------------------------------------------------");
    }
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

  void exibirSacolaRestantes() {
    if (itens.isEmpty) {
      print("\nO carrinho está vazio.\n");
    } else {
      print("\nItens restantes na sacola:\n");
      for (var livro in itens) {
        print("Identificação Livro: ${livro.id}");
        print("Título: ${livro.titulo}");
        print("Preço: R\$ ${livro.preco}");
        print("Autor: ${livro.autor}");
        print("---------------------------------");
      }
    }
  }

  double calcularPrecoTotal() {
    double precoTotal = 0;
    for (var item in itens) {
      precoTotal += item.preco;
    }
    return precoTotal;
  }
}