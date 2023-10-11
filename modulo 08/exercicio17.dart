import 'dart:math';
void main() {
  Random random = Random();

  int numero1 = random.nextInt(101); 
  int numero2 = random.nextInt(101); 
  int mdc = MDC(numero1, numero2);
  
  print("O MDC de $numero1 e $numero2 é $mdc");
}

int MDC(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}