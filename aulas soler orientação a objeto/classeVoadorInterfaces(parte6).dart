abstract class Voador { 
  void decolar();
  void pousar();
}

abstract class Mamifero {
  void mamar();
}

class Animal {
  void comer(){
    print("Alimentar-se");
  }
}

class Aviao implements Voador {
  void decolar() {
    print("Acelerando");
    print("Recolhendo trem de pouso");
  }

  void pousar() {
    print("Abrindo tem de pouso");
    print("Desacelerando no solo");
  }
}

class Passaro extends Animal implements Voador {
  void decolar() {
    print("Batendo as asas");
    print("Dobrando as patas");
  }

  void pousar() {
    print("Batendo as asas");
  }
}

class Superman extends Animal implements Voador,Mamifero {
  void decolar() {
    print("Levantando o pulso direito");
  }

  void pousar() {
    print("Dobrando os joelhos");
  }

  void mamar() {
    print("mamar");
  }
}