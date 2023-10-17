import 'dart:convert';
import 'dart:io';

class Livro {
  late int id;
  late String titulo;
  late double preco;
  late double estrelas;
  late String autor;
  late bool eFavorito;

  Livro(this.id, this.titulo, this.preco, this.estrelas, this.autor, this.eFavorito);

  static List<Livro> lerLivrosJson(String caminhoArquivo) {
    final arquivo = File(caminhoArquivo);

    if (arquivo.existsSync()) {
      String jsonContent = arquivo.readAsStringSync();
      List<dynamic> livrosJson = jsonDecode(jsonContent)['livros'];

      List<Livro> livros = [];

      for (var livroJson in livrosJson) {
        int id = livroJson['id'];
        String titulo = livroJson['titulo'];
        double preco = livroJson['preco'];
        double estrelas = livroJson['estrelas'];
        String autor = livroJson['autor'];
        bool efavorito = livroJson['favorito'];

        Livro livro = Livro(id, titulo, preco, estrelas, autor, efavorito);
        livros.add(livro);
      }

      return livros;
    } else {
      throw Exception("O arquivo não foi encontrado.");
    }
  }

  void mostrarDetalhes() {
    print("----------------------------");
    print("Identificação Livro: $id");
    print("Título: $titulo");
    print("Preço: R\$ $preco");
    print("Estrelas: $estrelas");
    print("Autor: $autor");
    print("Favorito: $eFavorito");
    print("----------------------------");
  }

  static void ordenarLivrosPorID(List<Livro> livros) {
    int n = livros.length;
    for (var i = 0; i < n - 1; i++) {
      for (var j = 0; j < n - i - 1; j++) {
        if (livros[j].id > livros[j + 1].id) {
          // Troca os livros se o ID for maior
          var temp = livros[j];
          livros[j] = livros[j + 1];
          livros[j + 1] = temp;
        }
      }
    }
  }
}