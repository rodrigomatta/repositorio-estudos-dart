import 'dart:io';
void main() {
  stdout.write("Digite a data no formato DD/MM/AAAA: ");
  String data = stdin.readLineSync()!;

  List<String> partes = data.split('/');
  if (partes.length != 3) {
    print("Formato de data inválido. Use DD/MM/AAAA!");
    return;
  }

  int dia = int.tryParse(partes[0]) ?? 0;
  int mes = int.tryParse(partes[1]) ?? 0;
  int ano = int.tryParse(partes[2]) ?? 0;

  if (dia <= 0 || dia > 31 || mes <= 0 || mes > 12) {
    print("Data inválida.");
    return;
  }

  List<String> mesesPorExtenso = ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"];

  if (mes > mesesPorExtenso.length) {
    print("Mês inválido.");
    return;
  }
  print("\nData: $dia/${mesesPorExtenso[mes - 1]}/$ano");
}
