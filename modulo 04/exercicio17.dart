import 'dart:io';

void main() {
  final senhaCorreta = 4531;
  int tentativasRestantes = 5;

  for (int i = 0; i < 5; i++) {
    stdout.write("Informe a senha: ");
    int? senha = int.tryParse(stdin.readLineSync() ?? '');

    if (senha == null) {
      print("Valor inválido fornecido.");
      continue; 
    }

    if (senha == senhaCorreta) {
      print("Acesso permitido!");
      break;
    } else {
      tentativasRestantes--;
      print("Senha incorreta. Tentativas restantes: $tentativasRestantes");
    }
  }

  if (tentativasRestantes == 0) {
    print("Número máximo de tentativas atingido. Acesso negado!");
  }
}