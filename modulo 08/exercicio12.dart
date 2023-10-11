import 'dart:math';
void main() {
  final random = Random();
  int x = random.nextInt(10); 
  int z = random.nextInt(5);
  int resultado = calcularPotencia(x, z);
  
  print("$x elevado a $z é igual a $resultado");
}

int calcularPotencia(int x, int z) {
  int resultado = 1;
  
  for (int i = 0; i < z; i++) {
    resultado *= x;
  }
  return resultado;
}