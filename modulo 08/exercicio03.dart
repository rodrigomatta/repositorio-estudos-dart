import 'dart:math';
void main() {
  String cadeia1 = gerarCadeia(6);
  String cadeia2 = gerarCadeia(6);
  
  print("Cadeia 1: $cadeia1");
  print("Cadeia 2: $cadeia2");
  
  int resultado = encontrarPrimeiraDiferenca(cadeia1, cadeia2);
  
  if (resultado == 0) {
    print("As cadeias são iguais.");
  } else {
    print("Os índices do primeiro caractere não são coincidentes");
  }
}

String gerarCadeia(int comprimento) {
  final random = Random();
  const letras = 'abcdef';
  String cadeia = '';

  for (int i = 0; i < comprimento; i++) {
    int indice = random.nextInt(letras.length);
    cadeia += letras[indice];
  }
  return cadeia;
}

int encontrarPrimeiraDiferenca(String str1, String str2) {
  int i;
  for (i = 0; i < str1.length && i < str2.length; i++) {
    if (str1[i] != str2[i]) {
      return i + 1; // primeiro caractere não coincidente (começando em 1)
    }
  }

  if (i < str1.length || i < str2.length) {
    return i + 1; // primeiro caractere não coincidente com o final da cadeia menor
  }
  return 0; // Cadeias idênticas
}