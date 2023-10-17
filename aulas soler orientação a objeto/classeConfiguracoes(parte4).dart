//modificadores  
class Configuracoes {
  static bool notificacaoAtivada = true;

  static void configuracaoInicial() {
    print("Configuração inicial do aplicativo");
  }
}

void main() {
  print(Configuracoes.notificacaoAtivada);
  Configuracoes.configuracaoInicial();
}