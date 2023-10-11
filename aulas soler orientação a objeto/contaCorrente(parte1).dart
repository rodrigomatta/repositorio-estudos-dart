void main () {
  ContaCorrente conta1 = ContaCorrente(10, "JOAO", 123);
  ContaCorrente conta2 = ContaCorrente(70, "ARTHUR",456);

  print(conta1.codigo);
  print(conta1.nomeUsuario);
  print(conta1.saldo);
  conta1.sacar(2);
  print("saldo da conta 1 é ${conta1.saldo.toString()}");
  conta1.sacar(9);
  print("saldo da conta 1 é ${conta1.saldo.toString()}");

  print(conta2.codigo);
}

class ContaCorrente {
  //atributos / caracteristicas
  late double saldo;
  late String nomeUsuario;
  late int codigo;

  ContaCorrente(double saldo, String nomeUsuario, int codigo){
    this.saldo = saldo;
    this.nomeUsuario = nomeUsuario;
    this.codigo = codigo;
  }

  void sacar(double valor) {
    //validação simples
    if (this.saldo >= valor) {
      this.saldo = this.saldo - valor;
      print("saque efetuado com sucesso");
    } else {
      print("não foi possivel efetuar a operação");
    }
  }
}