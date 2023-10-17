//classes mais a cima são classes generalistas
abstract class Animal {}

abstract class Pessoa extends Animal {
  void pensar() {
    print("Humm pode chover amanha");
  }
}

class Aluno extends Pessoa with Programador{}

//classes mais a baixo são especialistas
class Funcionario extends Pessoa with Programador {
  void registrarPonto() {
    print("registrando ponto");
  }
}

class Gerente extends Funcionario {}

mixin Programador on Pessoa {
  void criarCodigos() {
    print("Criar códigos incriveis");
  }
}

class Cachorro extends Animal {}

void main() {
  var gerente = Gerente();
  gerente.criarCodigos();
  
  var funcionario = Funcionario();
  funcionario.criarCodigos();
  //var cachorro = Cachorro();
  //cachorro.criarCodigos();
}