import 'dart:convert';
import 'dart:io';

class Livro {
  late int id;
  late String titulo;
  late double preco;
  late double estrelas;
  late String autor;
  late bool eFavorito;

  Livro(this.id, this.titulo, this.preco, this.estrelas, this.autor,
      this.eFavorito);

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
        bool eFavorito = livroJson['favorito'];

        Livro livro = Livro(id, titulo, preco, estrelas, autor, eFavorito);
        livros.add(livro);
      }

      return livros;
    } else {
      throw Exception('O arquivo não foi encontrado.');
    }
  }
}

void main() {
  List<Livro> livros = Livro.lerLivrosJson('livraria.json');

  for (var livro in livros) {
    print('----------------------------');
    print('ID: ${livro.id}');
    print('Título: ${livro.titulo}');
    print('Preço: ${livro.preco}');
    print('Estrelas: ${livro.estrelas}');
    print('Autor: ${livro.autor}');
    print('Favorito: ${livro.eFavorito}');
    print('----------------------------');
  }
}
