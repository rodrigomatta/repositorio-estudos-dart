import 'dart:io';

Future<void> main() async {
  final arquivoReceb = File('recebimentos.csv');
  final arquivoCli = File('clientes.csv');

  List<String> linhasReceb = (await arquivoReceb.readAsString()).split('\n');
  List<String> linhasCli = (await arquivoCli.readAsString()).split('\n');

  stdout.write("Digite a data de início no formato AAAA-MM-DD: ");
  String dataInicio = stdin.readLineSync()!;
  DateTime dtIn = DateTime.parse(dataInicio);

  stdout.write("Digite a data de fim no formato AAAA-MM-DD: ");
  String dataFim = stdin.readLineSync()!;
  DateTime dtFim = DateTime.parse(dataFim);

  final Map<int, int> diasAtrasoPorCliente = {};

  int index = 0;
  for (int i = 1; i < linhasReceb.length; i++) {
    List<String> auxiliar = linhasReceb[i].split(",");
    DateTime dataVencimento = DateTime.parse(auxiliar[3]);

    if (dataVencimento.isAfter(dtIn) && dataVencimento.isBefore(dtFim)) {
      index = int.parse(auxiliar[4]);
      String nomeCliente = '';

      for (int j = 1; j < linhasCli.length; j++) {
        List<String> auxCli = linhasCli[j].split(",");

        if (int.parse(auxCli[0]) == index) {
          nomeCliente = auxCli[1];

          // Calcula o número de dias em atraso para a transação atual
          int diasAtraso = dataVencimento.isBefore(dtFim) ? dtFim.difference(dataVencimento).inDays : 0;
          // Inicializa o total de dias em atraso para o cliente (se ainda não existir)
          diasAtrasoPorCliente[index] ??= 0;
          // Atualiza o total de dias em atraso para o cliente, somando o valor atual (ou 0 se não existir) com os dias de atraso da transação atual
          diasAtrasoPorCliente[index] = (diasAtrasoPorCliente[index] ?? 0) + diasAtraso;

          print("\nCliente: $nomeCliente");
          print("Número do Documento: ${auxiliar[0]}");
          print("Data de Vencimento: ${auxiliar[3]}");
          print("Dias com pagamento em Atraso: $diasAtraso");
          break;
        }
      }
    }
  }
}