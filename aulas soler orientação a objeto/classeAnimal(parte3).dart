import 'dart:io';

//erança
//classe mãe
class Animal {
  late String nome = "";
  late String cor = "";

  Animal (String nome, String cor) {
    this.nome = nome;
    this.cor = cor;
  }

  void dormir() {
    print("o $nome dorme");
  }

  void comer() {
    print("$nome está comendo");
  }

  //explicação metodo sobrescrição
  void correr() {
    stdout.write("corre como ");
  }
}

//classe filha 1
class Cachorro extends Animal {
  Cachorro(String nome, String cor) : super(nome, cor);

  void latir() {
    print ("$nome está Latindo");
  }
}

//classe filha 2
// class Pessoa extends Animal {

//   Pessoa(super.nome, super.cor);
//   void mostrarCpf() {
//     print(cpf);
//   }
// }

// class Passaro extends Animal {

//   @override //notação de sobrescrita
//   void correr() {
//     super.correr(); //super reescreve
//     print("Passaro");
//   }

//   void voar() {
//     print("Voando");
//   }
// }

//metodo principal de execução
void main() {
  Cachorro c = Cachorro("Totó", "Caramelo");
  c.comer();
  c.latir();

  // Cachorro doguinhoCaramelo = Cachorro();
  // doguinhoCaramelo.correr();
  // doguinhoCaramelo.nome = "Pipoca";
  // doguinhoCaramelo.comer();
  // doguinhoCaramelo.dormir();

  // Passaro angryBird = Passaro();
  // angryBird.correr();

  // Pessoa p1 = Pessoa();
  // p1.nome = "Jurandir";
  // p1.cpf = 1234;
  // p1.mostrarCpf();
}
