//classe abstrata
//estrutura que sempre vai ser estanciada em outra classe e não pode ser instanciada no metodo main.

abstract class Animal {
  String cor = "";
  void correr() {
    print("Correr");
  }
  void comer();
}

class Cachorro extends Animal {
  String raca = " ";
  
  void latir() {
    print("Latir");
  }
  
  @override
  void comer() {
    print("Comer");
  }
}