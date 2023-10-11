import 'dart:math';
void main() {
  Random random = Random();
  int horas = random.nextInt(25); 
  int minutos = random.nextInt(61); 
  int segundos = random.nextInt(61); 
  int resultado = converterParaSegundos(horas, minutos, segundos);

  print("$horas h, $minutos min e $segundos s correspondem a $resultado segundos.");
}

int converterParaSegundos(int horas, int minutos, int segundos) {
  int totalSegundos = (horas * 3600) + (minutos * 60) + segundos;
  return totalSegundos;
}