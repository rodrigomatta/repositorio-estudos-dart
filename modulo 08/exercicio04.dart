import 'dart:math';
void main() {
  // Gera um raio aleatório entre 0 e 20
  double raio = Random().nextDouble() * 21;
  double volume = calcVolumeEsfera(raio);
  print('O volume da esfera com raio $raio é: $volume');
}

double calcVolumeEsfera(double raio) {
  // Fórmula: v = (4/3) * raio^3
  double volume = (4 / 3) * pow(raio, 3);
  return volume;
}