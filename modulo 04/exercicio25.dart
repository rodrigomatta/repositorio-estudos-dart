import 'dart:io';

void main() {
  stdout.write("Informe o número de horas extras do funcionário (no formato hh:mm): ");
  String horasExtrasInput = stdin.readLineSync()!;
  List<String> horasExtras = horasExtrasInput.split(':');

  if (horasExtras.length != 2) {
    print("Formato de hora inválido. Use o formato HH:mm.");
    return;
  }

  int horas = int.tryParse(horasExtras[0]) ?? 0;
  int minutos = int.tryParse(horasExtras[1]) ?? 0;

  //minutos extras em horas:
  double extras = horas + (minutos / 60);

  stdout.write("Informe o número de faltas do funcionário: ");
  int faltas = int.parse(stdin.readLineSync()!);

  double valorPremio = extras - (2/3 * (faltas));
  double premio;

  if (valorPremio < 600) {
    premio = 100;
  } else if (valorPremio >= 600 && valorPremio < 1200) {
    premio = 200;
  } else if (valorPremio >= 1200 && valorPremio < 1800) {
    premio = 300;
  } else if (valorPremio >= 1800 && valorPremio < 2400) {
    premio = 400;
  } else {
    premio = 500;
  }
  print("O funcionário receberá o premio no valor de R\$ ${premio.toStringAsFixed(2)} ");
}
